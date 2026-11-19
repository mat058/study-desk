# Skizzen – KI-verbessert (Wireframes in Figma)

**Stand:** 19.11.2026 · **Figma:** [https://www.figma.com/design/XofFCUkretdp9KRkDgiZRn](https://www.figma.com/design/XofFCUkretdp9KRkDgiZRn) → Seite «1 Wireframes (verbessert)»

## Vorgehen
1. Matteo zeichnet die Skizzen auf dem iPad → [`../original/2026-11-19_ipad-skizzen-original.pdf`](../original/2026-11-19_ipad-skizzen-original.pdf) (11 Seiten)
2. Claude baut sie **direkt in Figma** als Graustufen-Wireframes nach und verbessert sie (Entscheid D15). Unter jedem Screen steht eine gelbe Notiz: *was* gegenüber der Skizze geändert wurde und *warum*.
3. Matteo prüft und wählt die Varianten (Decide, Kap. 3.3) → danach Hi-Fi-Mockup auf Seite «2 Mockup».

Komponenten (Seite «0 Komponenten»): `WF/Button` (Primär/Sekundär/Gefahr), `WF/Input`, `WF/Badge`, `WF/NavItem` – alle Screens verwenden Instanzen davon.

## Varianten für die Decide-Phase
| Thema | Variante | Screen |
|---|---|---|
| Navigation | A: Sidebar links | 03 |
| Navigation | B: Topbar oben | 04 |
| Abgaben-Ansicht | Liste (Tabelle mit Filtern) | 05 |
| Abgaben-Ansicht | Kanban (Offen / In Arbeit / Erledigt) | 06 |

## Screens und Änderungen gegenüber der Skizze
| # | Screen | In Skizze? | Wichtigste Änderungen | Export (PNG) |
|---|---|---|---|---|
| 01 | Login | ja | E-Mail statt Username; Fehlermeldung im Formular; «Registrieren» als klarer Link; Bild nur lizenzfrei | `2026-11-19_wf-01-login.png` |
| 02 | Registrieren | nein | Neu (fehlte); Validierung pro Feld (Passwort ≥ 8, gleich, E-Mail eindeutig); gleiches Layout wie Login | `2026-11-19_wf-02-registrieren.png` |
| 03 | Dashboard – Variante A (Sidebar) | ja | «Import» aus Menü → ins Modul; Lernzeit/Noten ergänzt; KPI-Karten (Überfällig, Belastung, Fortschritt, Schnitt); «Widgets anpassen» | `2026-11-19_wf-03-dashboard-variante-a.png` |
| 04 | Dashboard – Variante B (Topbar) | nein | Neue Navigations-Variante für Decide: Menü oben, Dashboard zweispaltig mit Wochenübersicht | `2026-11-19_wf-04-dashboard-variante-b.png` |
| 05 | Abgaben – Liste | ja | Echte Filter (Suche, Modul, Status, Typ) + Sortierung; Liste↔Kanban-Umschalter; Status in der Zeile änderbar | `2026-11-19_wf-05-abgaben-liste.png` |
| 06 | Abgaben – Kanban | ja | Karten mit Badge/Titel/Deadline/Prio; Statuswechsel per «Weiter →» statt Drag & Drop | `2026-11-19_wf-06-abgaben-kanban.png` |
| 07 | Abgabe erfassen/bearbeiten (Modal) | ja | Modal über Liste; Pflichtfelder *; Status-Feld neu; Änderungsprotokoll Deadline; Löschen rot links | `2026-11-19_wf-07-abgabe-formular.png` |
| 08 | Module | ja | Semester als Feld; Karten mit ECTS, Dozierenden, offenen Abgaben, Fortschritt; Modulfarbe | `2026-11-19_wf-08-module.png` |
| 09 | Modul-Space | ja | Zurück-Pfeil + Infos; abhakbare Abgaben; Notizen & To-dos zusammengelegt; Notenbereich mit «Was brauche ich für 4.0?» | `2026-11-19_wf-09-modul-space.png` |
| 10 | Modul erfassen/bearbeiten (Modal) | ja | PDF-Import oben und erklärt; kompakteres Formular; Farbauswahl; Validierung eindeutiges Kürzel | `2026-11-19_wf-10-modul-formular.png` |
| 11 | Kalender | ja | ‹ Heute ›, Monat/Woche; Chips pro Abgabe; bidirektionale Sync → .ics-Abo | `2026-11-19_wf-11-kalender.png` |
| 12 | Lernzeit | nein | Neu (fehlte): Timer pro Modul, Balken pro Modul + Wochenziel, Sessions-Liste mit Nachtragen | `2026-11-19_wf-12-lernzeit.png` |
| 13 | Noten | nein (nur Kachel) | Neu (fehlte): Gesamt-/Semesterschnitt, Notenpunkte, ECTS; Tabelle aller Module | `2026-11-19_wf-13-noten.png` |
| 14 | Archiv | ja | Aufklappbare Semester mit Zusammenfassung; «nur lesbar»; Wiederherstellen | `2026-11-19_wf-14-archiv.png` |

## Bewusst weggelassen / vereinfacht (Vorschläge von Claude – von Matteo zu bestätigen)
- **Kalender-Sync in beide Richtungen** → ersetzt durch **.ics-Abo** (nur lesen): realistisch umsetzbar, bidirektionale Sync wäre zu gross.
- **Drag & Drop im Kanban** → Statuswechsel per Button (Form Action); Drag & Drop höchstens als Erweiterung.
- **«Import» als Menüpunkt** → Import im Modul-Formular / Modul-Space (Kontext).
- **«Verbindbar mit Apps»** im Modul-Space → abgedeckt durch .ics-Export.

## Offen
- PNG-Exporte der 14 Screens (Matteo exportiert aus Figma, Namen siehe Tabelle) → in diesen Ordner.
- Dashboard-/Notenzahlen sind Beispielwerte; Notenpunkte-Regel (Note − 4) × ECTS noch zu bestätigen.
