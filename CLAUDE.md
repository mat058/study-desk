# CLAUDE.md – StudyDesk (Projektkontext für KI-Agenten)

Type: solo-small
Notion history: https://app.notion.com/p/4149c8c5db4c81a2a08dd3e0843f7cee
Todo list: Study Desk
Board: https://github.com/users/mat058/projects/2

## Projekt
- ZHAW Prototyping HS26, Einzelprojekt von Matteo Rotzer. Ziel: **Note 6** (100 Punkte).
- **StudyDesk**: Webapp für Studierende, die Module, Leistungsnachweise/Deadlines und Lernzeit an einem Ort verwaltet (statt verteilt auf Moodle, Mail, Reminders). Zielgruppe: Studierende (ZHAW).
- Webapp mit **SvelteKit 3** (Svelte 5, Runes), JavaScript, **MongoDB Atlas**, Deployment auf **Netlify**.
- Aufgabenstellung & Bewertung: siehe `README.md` (Vorlage) und `docs/`.
- Methodik in 5 Phasen: Understand/Define → Sketch → Decide → Prototype → Validate.

## Pflicht-Anforderungen (nie gefährden)
- Daten aus der DB laden **und** erstellen/bearbeiten können (CRUD), mehrere Pages, Navigation/Workflows.
- App online erreichbar; getestete Version separat deployt + Git-Tag.
- Alle fremden Inhalte in `docs/sources.md` mit Lizenz. Keine Secrets im Repo (`.env` ist ignoriert).

## Code-Konventionen
- Struktur wie im Unterricht: DB-Zugriff nur in `src/lib/server/db.js`; Laden in `+page.server.js` (`load`), Schreiben via **Form Actions**.
- Imports über `#lib/...`. Svelte 5 Runes (`$props`, `$state`, `$derived`).
- Jede Form: Validierung + sichtbares Feedback (Erfolg/Fehler). Code kommentieren (Deutsch).
- Code so halten, dass Matteo ihn erklären kann (Java/Python-Hintergrund) – lieber einfach als clever.

## Git
- Conventional Commits auf Deutsch: `feat: …`, `fix: …`, `docs: …`, `refactor: …`, `chore: …`; Issue referenzieren (`#12`).
- Kleine Commits, ein Thema pro Commit. Matteo committet selbst: Claude sagt nach jedem abgeschlossenen Schritt, ob jetzt committet werden soll, und schlägt die Nachricht vor. Features auf Branch `feat/<name>`, Merge via Pull Request.

## Doku-Regeln (WICHTIG – immer einhalten)
**Die gesamte Dokumentation ist Aufgabe von Claude:** README (alle Kapitel), `docs/` (ai-log, decisions, sources, SCREENSHOTS-Checkliste, Phasen-Artefakte) nach jedem Schritt selbst nachführen – nicht nur vorschlagen. Matteo liefert Inhalte/Entscheide und prüft; Claude meldet oben kurz, was angepasst wurde.

**Jede Änderung** (Code, Doku, Entscheid) wird präzise dokumentiert: was, warum, wo (Datei/Codestelle) – und mit Screenshot belegt, sofern sichtbar. Ablage und Namensschema: `docs/SCREENSHOTS.md`; Texte in `docs/` bzw. README-Kapitel. Kein Schritt gilt als fertig ohne diesen Nachweis.

Bei **jeder** Antwort **ganz oben** einen kurzen Block «⚡ JETZT WICHTIG» ausgeben (Matteo liest unten nicht mehr). Nur Zeilen aufführen, die gerade zutreffen – leere/irrelevante weglassen, je max. 1 Zeile:

```
📋 DOKU
- Screenshot: <was genau, welcher Zustand> → <Zielordner/Dateiname>  (oder «keiner nötig»)
- README-Kapitel: <welches Kapitel ist betroffen, was ergänzen>
- KI-Log: <Eintrag für docs/ai-log.md vorschlagen>
- Entscheid: <falls ein Entscheid getroffen wurde → docs/decisions.md>
- Quellen: <falls fremde Inhalte → docs/sources.md>
💾 COMMIT: <«jetzt committen» + fertige Nachricht im Format `typ: Beschreibung` – oder «noch nicht, weil …»>
🚀 VERBESSERUNG: <1–2 konkrete Ideen, wie die App besser wird (Usability, Feedback, Extras)>
❗ FEHLT NOCH: <was in App oder Doku als Nächstes fehlt>
```

- Screenshot-Konvention: `docs/SCREENSHOTS.md`.
- Erweiterungen (über Mindestumfang) immer nach Schema Kap. 4 dokumentieren: Beschreibung & Nutzen · Abgrenzung zum Mindestumfang · Umsetzung · Nachweise (Screenshot + Codestellen) · Bezug zur Evaluation.

## Grenzen für den Agenten
- Keine Secrets lesen/ausgeben, `.env` nie committen.
- Keine `git push` / Deploys ohne Bestätigung von Matteo.
- Keine fremden Bilder/Code ohne Quellen- und Lizenzangabe.

## Current status / next steps
- Stand 2026-11-21: Understand/Define und Sketch abgeschlossen (Übung 9, Wireframes in Figma, README 3.2); Setup-Check mit `/adopt-project` ohne grössere Lücken.
- Code: erst Grundgerüst (`db.js` ohne CRUD, Platzhalter-Startseite); keine Tests.
- Als Nächstes: Variante wählen & Figma-Mockup (#9, #11) → Datenmodell/CRUD in `db.js` (#36) und Navigation (#37).
- Mit echter Logik: Vitest einrichten (#46).
