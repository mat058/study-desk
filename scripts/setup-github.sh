#!/usr/bin/env bash
# Richtet Labels, Meilensteine (pro Phase), erste Issues und ein Project Board für StudyDesk ein.
# Voraussetzung: brew install gh && gh auth login && gh auth refresh -s project
set -euo pipefail
REPO="mat058/study-desk"
OWNER="mat058"

echo "▶ Labels"
lbl() { gh label create "$1" --repo "$REPO" --color "$2" --description "$3" --force; }
lbl "feature"      "1d76db" "Neue Funktion / User Story"
lbl "bug"          "d73a4a" "Fehler in der App"
lbl "usability"    "fbca04" "Finding aus dem Usability-Test"
lbl "docs"         "0e8a16" "Dokumentation / README / Artefakte"
lbl "artefakt"     "5319e7" "Methodik-Artefakt (Persona, HMW, Journey Map, ...)"
lbl "erweiterung"  "c5def5" "Geht über den Mindestumfang hinaus (Kap. 4)"
lbl "setup"        "bfdadc" "Infrastruktur, Tooling, Deployment"
lbl "ki"           "f9d0c4" "KI-/Agenten-Workflow"

echo "▶ Meilensteine"
# Kein Wochentakt: Meilensteine ohne Fälligkeit, nur der Usability-Test hat einen fixen Termin
ms() { if [ -n "$2" ]; then gh api "repos/$REPO/milestones" -f title="$1" -f due_on="$2T22:59:00Z" -f description="$3" >/dev/null 2>&1 || echo "  (existiert schon: $1)";
       else gh api "repos/$REPO/milestones" -f title="$1" -f description="$3" >/dev/null 2>&1 || echo "  (existiert schon: $1)"; fi; }
ms "0 Setup"               ""           "Repo, Datenbank, Deployment, Tooling"
ms "1 Understand & Define" ""           "Problem, Zielgruppe, HMW, Recherche, Personas, Requirements"
ms "2 Sketch"              ""           "2–3 Varianten skizzieren (Übung 9)"
ms "3 Decide"              ""           "Variante wählen, Workflows, Figma-Mockup (Übung 10)"
ms "4 Prototype"           ""           "Implementierung, Prototyping mit KI (Übung 11)"
ms "5 Validate"            "2026-12-14" "Usability-Test (Pflichttermin Woche 14), Auswertung, Verbesserungen"

echo "▶ Erste Issues"
iss() { gh issue create --repo "$REPO" --title "$1" --label "$2" --milestone "$3" --body "$4" >/dev/null; echo "  + $1"; }
# Bereits erledigte Setup-Schritte als geschlossene Issues (nachvollziehbare Historie)
done_iss() { url=$(gh issue create --repo "$REPO" --title "$1" --label "setup" --milestone "0 Setup" --body "$2"); gh issue close "$url" --comment "$3" >/dev/null; echo "  ✓ $1"; }
done_iss "MongoDB Atlas einrichten und .env setzen" "Eigenes Atlas-Projekt, Cluster M0, DB-User, Network Access, Verbindung testen." "Erledigt, siehe D8 und docs/organisation/2026-11-10_mongodb-verbunden.png"
done_iss "Netlify-Deployment einrichten" "Repo verbinden, DB_URI als Env-Variable, erster Deploy, URL in README." "Erledigt: https://study-desk-mr.netlify.app – siehe D9"
iss "Problem & Zielgruppe beschreiben (Kap. 1, 3.1)" "docs,artefakt" "1 Understand & Define" "Problem, Ziele, Zielgruppe, Stakeholder."
iss "How-Might-We-Fragen & Recherche bestehender Tools" "artefakt" "1 Understand & Define" "HMW-Fragen + Analyse Moodle, Notion-Vorlagen, MyStudyLife u. a."
iss "Proto-Personas erstellen" "artefakt" "1 Understand & Define" "1–2 Proto-Personas für Studierende."
iss "Requirements detaillieren (User Stories, Priorisierung)" "artefakt,erweiterung" "1 Understand & Define" "Anforderungen aus RE ableiten: User Stories mit Akzeptanzkriterien, MoSCoW-Priorisierung."
iss "Skizzen-Varianten (Übung 9)" "artefakt" "2 Sketch" "2–3 Varianten selbst skizzieren → docs/02-sketch/original, KI-Verbesserung → ai-improved."

echo "▶ Project Board"
NUM=$(gh project create --owner "$OWNER" --title "StudyDesk" --format json --jq .number)
gh project link "$NUM" --owner "$OWNER" --repo "$REPO"
for n in $(gh issue list --repo "$REPO" --state open --json url --jq '.[].url'); do
  gh project item-add "$NUM" --owner "$OWNER" --url "$n" >/dev/null
done
echo "✅ Fertig: https://github.com/users/$OWNER/projects/$NUM"
