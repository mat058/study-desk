# Entscheide-Log

Grundlage für Kap. 3.3 (Decide) und 3.4.2 (Besondere Entscheidungen). Jeder Entscheid **mit Begründung**.

| # | Datum | Frage | Optionen | Entscheid | Begründung | Phase |
|---|---|---|---|---|---|---|
| D1 | 2026-11-10 | Wo liegt der Code? | iCloud / lokal ~/Developer | lokal ~/Developer | iCloud-Sync verträgt node_modules/.git schlecht; GitHub ist das Backup | Setup |
| D2 | 2026-11-10 | Basis des Projekts | `npx sv create` / Kurs-Starter SW5 | Kurs-Starter SW5 | Gleiche Versionen & Konventionen wie im Unterricht (SvelteKit 3, `#lib`-Imports) | Setup |
| D3 | 2026-11-10 | Datenbank & Hosting | MongoDB Atlas + Netlify / Alternativen | Atlas + Netlify | Vorgabe/Empfehlung aus SW6/SW7, Gratis-Tier reicht | Setup |
| D4 | 2026-11-10 | Thema des Projekts | A Semester-Hub · B Abo-Manager · C Reise-Hub · D Bike-Service-Log | **A – StudyDesk** | Erfüllt alle Kriterien am besten: echtes, selbst erlebtes Problem (Infos verteilt auf viele Tools – Bezug zu Problemraum Woche 8), 2–3 verknüpfte Datenobjekte mit CRUD, mehrere Workflows, Testpersonen (Studierende) = Zielgruppe, viele naheliegende Erweiterungen | Understand/Define |
| D5 | 2026-11-10 | Projektname | Semesterly · StudyDesk · LernLot | **StudyDesk** (technisch `study-desk`) | Kurz, verständlich, beschreibt den Zweck («Schreibtisch» fürs Studium) | Understand/Define |
| D6 | 2026-11-10 | Umgang mit `npm audit`-Warnungen | `npm audit fix --force` / bewusst einzeln aktualisieren | Keine erzwungenen Audit-Fixes; Abhängigkeiten nur bewusst aktualisieren | `--force` stufte SvelteKit auf 0.0.30 und adapter-netlify auf 0.0.13 zurück (21 statt 4 Warnungen, App defekt); behoben durch Zurücksetzen der package.json + Neuinstallation. Die 4 «low»-Warnungen betreffen nur Dev-Tools | Setup |
| D7 | 2026-11-10 | Umgang mit Umgebungsvariablen | Variablen optional / Pflicht via `defineEnvVars` | Pflicht (`DB_URI`), lokal `.env` (ignoriert), auf Netlify als Environment Variable | Fehlende Konfiguration fällt sofort auf statt erst beim DB-Zugriff (Fehler `env_invalid` beim ersten Start) | Setup |
| D8 | 2026-11-10 | Datenbank-Setup in Atlas | bestehender Cluster (Data Management) / eigenes Atlas-Projekt | Eigenes Projekt «StudyDesk» mit Gratis-Cluster `Cluster0` (M0); IP-Access `0.0.0.0/0`; DB-User mit Rolle «Read and write to any database» statt Atlas Admin, Passwort nach Offenlegung neu generiert | Trennung von anderen Modulen; Netlify hat keine festen IPs (Schutz über User/Passwort); Prinzip der minimalen Rechte | Setup |
| D9 | 2026-11-10 | Deployment auf Netlify | Netlify-Agent/Drag&Drop / Import aus GitHub mit automatischem Deploy | Import aus GitHub (`main`), Build `npm run build`, Publish `build`, `DB_URI` als Environment Variable; Site-Name `study-desk-mr` (`study-desk` war vergeben); Projekt öffentlich geschaltet | Jeder Push auf `main` deployt automatisch; Secrets bleiben ausserhalb des Repos; Dozierende brauchen ohne Login Zugriff | Setup |
