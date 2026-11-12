# Requirements StudyDesk (Issue #6)

Grundlage: Personas Julian & Leonie (`2026-11-10_personas.md`), Ideen Lösungsraum (`2026-11-10_ideen-loesungsraum.md`).
Methode: Epics → User Stories mit Akzeptanzkriterien → MoSCoW-Priorisierung.

## 1. Epics (grobe Themenblöcke)

Erarbeitet am 12.11.2026 im Frage-Antwort-Verfahren mit Claude (Entscheide siehe Abschnitt 1.1).
Priorität ist **vorläufig** – definitiv wird sie pro User Story in Abschnitt 3 (MoSCoW).

| ID | Epic (Ziel) | Beschreibung | Löst Problem (Übung 8) | Persona | Prio (vorläufig) |
|---|---|---|---|---|---|
| E1 | Eigenes Konto nutzen | Registrieren, anmelden, abmelden. Alle Daten (Module, Abgaben, Noten, Dashboard-Einstellungen) gehören zu genau einem User. | Voraussetzung für persönliche Daten & anpassbares Dashboard | Julian, Leonie | Must |
| E2 | Semester & Module organisieren | Semester anlegen, Module (Name, Kürzel, ECTS, Dozierende) erfassen und bearbeiten. Jedes Modul hat einen eigenen Space (Detailseite) mit allen Infos aus Semesterplan und Modulbeschreibung. Abgeschlossene Semester archivieren → History, nur noch lesbar. | 1.1, 2.3 – Infos verstreut | Julian, Leonie | Must (Archiv: Should) |
| E3 | Leistungsnachweise & Deadlines verwalten | Abgaben, Prüfungen, Übungen mit Modul, Datum, Priorität, Status (offen / in Arbeit / erledigt) und Notizfeld erfassen, bearbeiten, löschen. Datumsänderungen werden protokolliert (alt → neu, Grund, wann). | 1.1, 2.3, 2.4, 2.6, 2.9, HMW 2 | Julian, Leonie | Must (Protokoll: Could) |
| E4 | Semesterplan & Modulbeschreibung importieren | PDF hochladen, Inhalte **per Code (ohne KI)** erkennen: Modul + ECTS, Leistungsnachweise mit Gewichtung, Prüfungen/Abgaben/Übungen mit Datum. Vorschau zum Korrigieren/Abwählen vor dem Speichern. Unterstützt nur ZHAW-Formate (dokumentierte Einschränkung). | 2.5 – hoher Erfassungsaufwand | Julian, Leonie | Could |
| E5 | Überblick behalten | Dashboard mit Widgets (nächste Deadlines, überfällig/diese Woche, Fortschritt/KPIs, Belastungswarnung ≥ 3 Abgaben/Woche, Notenschnitt) – pro User ein-/ausblendbar. Kalenderansicht (Monat/Woche, Farbe pro Modul) und Export als .ics-Abo für Apple/Google Kalender. | 2.7, 2.8, 2.9, HMW 1, HMW 3 | Julian, Leonie | Must (Basis-Dashboard), Rest Should/Could |
| E6 | Noten & Notenpunkte im Griff haben | Im Modul-Space alle Leistungsnachweise mit Gewichtung (aus Import, anpassbar); erreichte Noten eintragen. Grafik zeigt, wie sich die Modulnote zusammensetzt. Semester- und Gesamtschnitt (nach ECTS gewichtet), Plus-/Minus-Notenpunkte. | Neu (nicht aus Übung 8) – im Usability-Test validieren | Julian, Leonie | Could |
| E7 | Lernzeit erfassen | Lernsessions pro Modul per Timer (Start/Stopp) oder manuell erfassen; Statistik/Grafik pro Woche und Modul. | Projektidee «Lernzeit» | Julian, Leonie | Could |

### 1.1 Entscheide aus der Klärung (12.11.2026)
- Module = eigenes Epic (eigene Entität, Abgaben hängen an Modul) → sauberes Datenmodell, zweite CRUD-Entität
- Notes = Notizfeld pro Abgabe, kein eigenes Epic
- Import = PDF Semesterplan + Modulbeschreibung, **reine Code-Erkennung (Regex), keine KI**; falls nicht alle Formate gehen → nur ZHAW-Formate
- Login von Anfang an (Must) – nötig für persönliche Daten und anpassbares Dashboard
- Dashboard anpassbar = Widgets pro User ein-/ausblenden
- Kalender = Ansicht in der App **und** .ics-Export
- Gewichtung der LN aus Modulbeschreibung übernehmen, aber anpassbar (Plan könnte veraltet sein)
- Gesamtschnitt nach ECTS gewichtet
- Notenpunkte: (Note − 4) × ECTS, Beispiel 6 ECTS: 3.5 → −3, 3.0 → −6 (genaue Regel folgt von Matteo, v. a. für Noten über 4)
- Archivieren pro Semester (History, nur lesbar, Noten zählen weiter im Gesamtschnitt)
- Lernzeit: Timer, manuelle Sessions, Statistik/Grafik

### 1.2 Erkenntnisse PDF-Formate (Machbarkeit E4)
- **Modulbeschreibungen** (3Pt, 3DA): einheitlich (ZHAW-Moduldatenbank) – ECTS und Tabelle «Leistungsnachweise … Gewichtung xx.xx %» gut per Code lesbar
- **Semesterprogramme**: 3Pt («Woche 9 / 09.11. – 15.11.») und 3DA («Week 1 / (15.09. - 18.09.)») ähnlich; **3PMo weicht ab** («KW / 15.09.2026 – 16:00», pro Lektion eine Zeile) → mind. 2 Parser-Muster nötig
- Pflicht-Abgaben stehen teils nur im Fliesstext (z. B. 3DA: «60 % MEP, 40 % Projekt») → Vorschau mit manueller Korrektur ist Pflicht

## 2. User Stories

Format: **Als** <Persona> **möchte ich** <Funktion>, **damit** <Nutzen>.
Akzeptanzkriterien (AK) sind so formuliert, dass man im Test «erfüllt / nicht erfüllt» sagen kann.
Jede Form hat Validierung + sichtbares Feedback (Erfolg/Fehler) – gilt für alle Stories, wird nicht jedes Mal wiederholt.

### E1 – Eigenes Konto nutzen
**US-01** – Als **Leonie** möchte ich **mich mit E-Mail und Passwort registrieren**, damit **meine Daten nur mir gehören**.
- [ ] E-Mail muss gültig und noch nicht registriert sein, Passwort mind. 8 Zeichen – sonst konkrete Fehlermeldung
- [ ] Passwort wird nur gehasht gespeichert (nie im Klartext)
- [ ] Nach der Registrierung bin ich angemeldet und lande auf dem Dashboard

**US-02** – Als **Julian** möchte ich **mich an- und abmelden**, damit **ich StudyDesk auf Laptop und Handy nutzen kann**.
- [ ] Falsche Login-Daten → Meldung «E-Mail oder Passwort falsch» (ohne zu verraten, was falsch ist)
- [ ] Angemeldet bleibe ich auch nach Neuladen der Seite
- [ ] Nach Abmelden ist keine geschützte Seite mehr erreichbar (Weiterleitung zum Login)

**US-03** – Als **Julian** möchte ich **nur meine eigenen Module und Abgaben sehen**, damit **meine Daten privat bleiben**.
- [ ] Jeder Datensatz ist einem User zugeordnet
- [ ] Ein anderer User sieht meine Daten weder in Listen noch über die direkte URL (→ 404)

### E2 – Semester & Module organisieren
**US-04** – Als **Leonie** möchte ich **ein Modul mit Name, Kürzel, Semester, ECTS und Dozierenden erfassen**, damit **alle meine Module an einem Ort sind**.
- [ ] Pflichtfelder: Name, Semester (z. B. «HS26»), ECTS (Zahl > 0)
- [ ] Nach dem Speichern erscheint das Modul in der Modulliste
- [ ] Jedes Modul bekommt eine Farbe (wählbar), die überall in der App verwendet wird

**US-05** – Als **Julian** möchte ich **ein Modul bearbeiten und löschen**, damit **ich Fehler schnell korrigieren kann**.
- [ ] Bearbeiten-Formular ist mit den bestehenden Werten vorausgefüllt
- [ ] Löschen nur nach Rückfrage; Hinweis, dass zugehörige Abgaben mitgelöscht werden

**US-06** – Als **Leonie** möchte ich **pro Modul einen eigenen Space (Detailseite) mit allen Infos und Abgaben**, damit **ich nicht in jedem Moodle-Kurs anders suchen muss**.
- [ ] Space zeigt Moduldaten, alle Leistungsnachweise/Deadlines des Moduls (nach Datum sortiert) und Notizen
- [ ] Von der Modulliste und von jeder Abgabe aus mit einem Klick erreichbar
- [ ] Direkt im Space kann eine neue Abgabe für dieses Modul erfasst werden (Modul vorausgewählt)

**US-07** – Als **Julian** möchte ich **ein abgeschlossenes Semester archivieren**, damit **mein aktueller Überblick nicht überladen ist**.
- [ ] Archivierte Module/Abgaben erscheinen nicht mehr in Dashboard, Kalender und Deadline-Liste
- [ ] Archivierte Daten sind nur noch lesbar (keine Bearbeiten-Buttons)
- [ ] Archivieren lässt sich rückgängig machen

**US-08** – Als **Julian** möchte ich **frühere Semester in einer History ansehen**, damit **ich nachschauen kann, was ich wann gemacht habe**.
- [ ] Seite «Archiv» listet Semester mit ihren Modulen (und Noten, falls E6 umgesetzt)

### E3 – Leistungsnachweise & Deadlines verwalten
**US-09** – Als **Julian** möchte ich **eine Abgabe mit Titel, Modul, Typ und Deadline erfassen**, damit **ich sie nicht mehr in Moodle suchen muss**.
- [ ] Pflichtfelder: Titel, Modul, Deadline; Typ (Abgabe / Prüfung / Übung / Präsentation), Priorität (hoch/mittel/tief) optional mit Standardwert
- [ ] Fehlt ein Pflichtfeld → Fehlermeldung beim Feld, Eingaben bleiben erhalten
- [ ] Nach dem Speichern Erfolgsmeldung, Eintrag ist in der Liste und nach Neuladen noch da
- [ ] Erfassen dauert < 30 Sekunden (Hypothese Usability-Test)

**US-10** – Als **Julian** möchte ich **eine Abgabe bearbeiten**, damit **ich verschobene Termine nachführen kann**.
- [ ] Alle Felder änderbar, Formular vorausgefüllt
- [ ] Nach dem Speichern sind die Änderungen überall (Liste, Dashboard, Modul-Space) sichtbar

**US-11** – Als **Leonie** möchte ich **eine Abgabe löschen**, damit **meine Liste aktuell bleibt**.
- [ ] Löschen nur nach Rückfrage
- [ ] Erfolgsmeldung nach dem Löschen

**US-12** – Als **Leonie** möchte ich **den Status einer Abgabe mit einem Klick ändern** (offen → in Arbeit → erledigt), damit **ich sehe, wo ich stehe**.
- [ ] Status direkt in der Liste änderbar, ohne Formular zu öffnen
- [ ] Erledigte Abgaben sind optisch abgesetzt (z. B. ausgegraut)

**US-13** – Als **Julian** möchte ich **die Deadline-Liste nach Modul, Status und Priorität filtern und sortieren**, damit **ich schnell finde, was zählt**.
- [ ] Filter Modul / Status / Priorität, kombinierbar
- [ ] Sortierung nach Datum (Standard) oder Priorität
- [ ] Hinweis «Keine Einträge» bei leerem Ergebnis

**US-14** – Als **Leonie** möchte ich **pro Abgabe Notizen erfassen** (z. B. Hinweise vom Dozenten), damit **wichtige Infos nicht in Mails untergehen**.
- [ ] Mehrzeiliges Notizfeld beim Erfassen/Bearbeiten
- [ ] Notizen im Modul-Space sichtbar

**US-15** – Als **Julian** möchte ich **sehen, wenn und wie sich eine Deadline geändert hat** (alt → neu, Grund, wann), damit **ich weiss, welches Datum gilt**.
- [ ] Bei Datumsänderung optionales Feld «Grund / Quelle» (z. B. «Mail Dozent»)
- [ ] Änderungsverlauf bei der Abgabe einsehbar
- [ ] Kürzlich geänderte Abgaben sind markiert (z. B. Badge «geändert»)

**US-16** – Als **Julian** möchte ich **eine Deadline als «bestätigt» markieren**, damit **ich sicher bin, dass dieses Datum gilt**.
- [ ] Checkbox «bestätigt», sichtbar als Symbol in Liste und Dashboard
- [ ] Wird das Datum geändert, wird «bestätigt» automatisch zurückgesetzt

### E4 – Semesterplan & Modulbeschreibung importieren
**US-17** – Als **Julian** möchte ich **eine Modulbeschreibung als PDF hochladen**, damit **Modul, ECTS und Leistungsnachweise mit Gewichtung automatisch erfasst werden**.
- [ ] Erkennung per Code (keine KI): Modulname/Kürzel, ECTS, Leistungsnachweise mit Gewichtung in %
- [ ] Funktioniert mit den ZHAW-Modulbeschreibungen (getestet: 3Pt, 3DA)

**US-18** – Als **Leonie** möchte ich **ein Semesterprogramm als PDF hochladen**, damit **alle Termine (Prüfungen, Abgaben, Übungen) automatisch als Deadlines angelegt werden**.
- [ ] Erkennt Wochen mit Datum und Einträge wie «Prüfung», «Abgabe», «Übung», «Präsentation»
- [ ] Unterstützt die ZHAW-Formate (mind. 3Pt/3DA und 3PMo)

**US-19** – Als **Julian** möchte ich **die erkannten Daten vor dem Speichern in einer Vorschau prüfen, korrigieren und abwählen**, damit **keine falschen Einträge entstehen**.
- [ ] Vorschau als Tabelle mit Checkbox pro Eintrag, Felder editierbar
- [ ] Erst «Übernehmen» speichert; Meldung «X Einträge importiert»

**US-20** – Als **Leonie** möchte ich **eine verständliche Meldung bei einem nicht unterstützten PDF**, damit **ich weiss, dass ich manuell erfassen muss**.
- [ ] Kein Absturz; Meldung + Link zum manuellen Erfassen

### E5 – Überblick behalten
**US-21** – Als **Leonie** möchte ich **auf dem Dashboard sofort die nächsten fälligen Abgaben sehen**, damit **ich weiss, was jetzt dran ist**.
- [ ] Startseite nach Login = Dashboard mit den nächsten 5 offenen Abgaben (Datum, Modul-Farbe, Titel, Tage bis Deadline)
- [ ] Klick auf Eintrag öffnet die Abgabe
- [ ] Schnellbuttons «+ Abgabe» und «+ Modul»

**US-22** – Als **Leonie** möchte ich **Überfälliges und «diese Woche» hervorgehoben sehen**, damit **ich nichts verpasse**.
- [ ] Überfällige offene Abgaben rot markiert, Abgaben dieser Woche separat gruppiert

**US-23** – Als **Julian** möchte ich **meinen Fortschritt sehen** (z. B. «7 von 12 erledigt»), damit **ich weiss, wo ich stehe**.
- [ ] KPI gesamt und pro Modul (Anzahl und %)

**US-24** – Als **Julian** möchte ich **eine Warnung bei Wochen mit ≥ 3 Abgaben**, damit **ich Job und Studium früh planen kann**.
- [ ] Wochen mit ≥ 3 Abgaben sind im Dashboard und Kalender markiert

**US-25** – Als **Julian** möchte ich **Dashboard-Widgets ein- und ausblenden**, damit **ich nur sehe, was mir wichtig ist**.
- [ ] Einstellungsseite mit Schaltern pro Widget; Einstellung pro User gespeichert
- [ ] Mindestens ein Widget bleibt immer sichtbar

**US-26** – Als **Leonie** möchte ich **alle Deadlines in einer Kalenderansicht (Monat/Woche) sehen**, damit **ich das Semester auf einen Blick erfasse**.
- [ ] Einträge farbig nach Modul, Klick öffnet die Abgabe
- [ ] Vor/zurück blättern, Sprung zu «heute»

**US-27** – Als **Julian** möchte ich **meine Deadlines als Kalender-Abo (.ics) in Apple/Google Kalender einbinden**, damit **ich sie nicht doppelt erfassen muss**.
- [ ] Persönlicher Abo-Link in den Einstellungen; Änderungen erscheinen im Kalender nach Aktualisierung

### E6 – Noten & Notenpunkte
**US-28** – Als **Julian** möchte ich **im Modul-Space die Noten meiner Leistungsnachweise eintragen**, damit **ich meine Modulnote kenne**.
- [ ] Leistungsnachweise mit Gewichtung sind vorhanden (aus Import oder manuell)
- [ ] Note 1–6 (Viertel-/Zehntelnoten), Validierung; Modulnote wird gewichtet berechnet (auch Teilstand)

**US-29** – Als **Julian** möchte ich **die Gewichtung anpassen**, damit **ich einen veralteten Plan korrigieren kann**.
- [ ] Gewichte editierbar; Summe muss 100 % ergeben, sonst Fehlermeldung

**US-30** – Als **Leonie** möchte ich **eine Grafik, wie sich meine Modulnote zusammensetzt**, damit **ich verstehe, was welche Prüfung zählt**.
- [ ] Diagramm mit Anteil jedes LN und erreichter Note
- [ ] Anzeige «Welche Note brauche ich in der MEP für eine 4.0?» (optional)

**US-31** – Als **Julian** möchte ich **Semester- und Gesamtschnitt nach ECTS gewichtet sehen**, damit **ich meinen Stand im Studium kenne**.
- [ ] Schnitt = Σ(Note × ECTS) / Σ ECTS, nur Module mit Note
- [ ] Archivierte Semester zählen im Gesamtschnitt mit

**US-32** – Als **Julian** möchte ich **meine Plus-/Minus-Notenpunkte sehen**, damit **ich weiss, wie viel Puffer ich habe**.
- [ ] Notenpunkte pro Modul = (Note − 4) × ECTS (Regel wird von Matteo bestätigt); Summe gesamt

### E7 – Lernzeit erfassen
**US-33** – Als **Julian** möchte ich **einen Lern-Timer pro Modul starten und stoppen**, damit **meine Lernzeit automatisch erfasst wird**.
- [ ] Timer läuft weiter, auch wenn ich die Seite wechsle; beim Stopp wird die Session gespeichert

**US-34** – Als **Leonie** möchte ich **eine Lernsession nachträglich erfassen** (Datum, Modul, Dauer, Notiz), damit **auch Lernen ohne Timer zählt**.
- [ ] CRUD für Sessions mit Validierung (Dauer > 0)

**US-35** – Als **Julian** möchte ich **eine Statistik meiner Lernzeit pro Woche und Modul**, damit **ich sehe, wo ich zu wenig investiere**.
- [ ] Diagramm Stunden pro Woche, aufgeteilt nach Modul

## 3. MoSCoW-Priorisierung

Leitlinie: **Must** = Mindestumfang (60 P.), muss bis zum Usability-Test (14.12.) stabil laufen. **Could** = Erweiterungen (40 P.), je nach Zeit; jede wird nach Kap.-4-Schema dokumentiert.

| Must | Should | Could (Erweiterungen) | Won't (bewusst nicht) |
|---|---|---|---|
| US-01, US-02, US-03 (Login) | US-07, US-08 (Archiv/History) | US-15, US-16 (Änderungsprotokoll, bestätigt) | KI-Erkennung von PDFs (bewusster Entscheid: nur Code) |
| US-04, US-05, US-06 (Module + Space) | US-13 (Filter/Sortierung) | US-17–US-20 (PDF-Import) | Direkte Moodle-Anbindung (keine offene Schnittstelle) |
| US-09–US-12 (Abgaben CRUD + Status) | US-14 (Notizen) | US-24 (Belastungswarnung) | Teilen/Gruppen-Funktionen |
| US-21 (Dashboard nächste Deadlines) | US-22, US-23 (Überfällig, Fortschritt) | US-27 (.ics-Export) | Push-/Mail-Benachrichtigungen |
| | US-25 (Widgets ein-/ausblenden) | US-28–US-32 (Noten & Notenpunkte) | Native Mobile-App (Web reicht, responsive) |
| | US-26 (Kalenderansicht) | US-33–US-35 (Lernzeit) | Drag & Drop-Dashboard |

**Empfohlene Reihenfolge der Erweiterungen** (grösster Nutzen für Personas zuerst): PDF-Import (E4) → Noten (E6) → .ics-Export → Lernzeit (E7).

## 4. Datenmodell-Entwurf (MongoDB, aus den Stories)

| Collection | Felder (Auswahl) | Stories |
|---|---|---|
| `users` | email, passwordHash, createdAt, dashboardWidgets (Liste sichtbarer Widgets), icsToken | US-01–03, 25, 27 |
| `modules` | userId, name, kuerzel, semester («HS26»), ects, dozierende, farbe, archived, assessments[] (Leistungsnachweise: name, gewichtung %, note) | US-04–08, 17, 28–32 |
| `deadlines` | userId, moduleId, titel, typ, datum, prioritaet, status, notiz, bestaetigt, aenderungen[] (altesDatum, neuesDatum, grund, am) | US-09–16, 18–19, 21–24, 26 |
| `studySessions` | userId, moduleId, start, ende/dauerMin, notiz | US-33–35 |

Hinweise: `assessments` (Noten-Teile) sind ins Modul eingebettet, weil sie nur dort gebraucht werden; Deadlines sind eine eigene Collection, weil sie modulübergreifend angezeigt werden (Dashboard, Kalender, Liste).
