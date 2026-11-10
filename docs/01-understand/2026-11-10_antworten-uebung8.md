# Übung 8 – Understand & Define (StudyDesk)

Matteo Rotzer · Prototyping HS26 · 10.11.2026

---

## Teil 1 – Problemräume

**1.1 Was nervt, beschäftigt oder fasziniert mich?**

1. **Kein zentraler Überblick im Studium:** Es gibt keinen Ort, an dem ich alle Deadlines, Abgaben und Leistungsnachweise übersichtlich aufgelistet sehe. Moodle hat zwar eine Deadline-Ansicht, sie ist aber nicht immer vollständig und weicht teilweise vom Semesterprogramm ab (meist, weil Dozierende Termine unterschiedlich pflegen – verständlich, aber für mich mühsam).
2. **Fehlende Schnittstellen:** Moodle lässt sich kaum mit anderen Tools verbinden – weder per API (Lesezugriff) mit meinem KI-Assistenten noch mit Apple Kalender oder Erinnerungen. Alles muss manuell oder über Umwege übertragen werden.
3. **Zu viele Apps für den gleichen Zweck:** Auch ausserhalb des Studiums braucht man für dasselbe Bedürfnis oft mehrere Apps (z. B. Swiss und Lufthansa für Flüge derselben Gruppe), und viele Apps/Websites sind schlecht umgesetzt.
4. **Faszination KI:** Mich fasziniert, welche Möglichkeiten heute jede:r mit KI hat – z. B. kann sich jede:r selbst eine App bauen, die genau zum eigenen Problem passt.

**1.2 Gewähltes Thema und Begründung**

Ich habe das Thema **«Studium organisieren»** gewählt, weil ich mich seit Beginn des Studiums damit beschäftige, wie ich meine Organisation optimieren kann: Welche Tools passen? Lohnt es sich, etwas Eigenes zu bauen? Das ist für mich ein Prozess, der nie ganz abgeschlossen ist, weil laufend neue Möglichkeiten dazukommen (z. B. durch KI).
Zusätzlich spricht dafür: Ich bin selbst täglich betroffen, habe direkten Zugang zur Zielgruppe (Mitstudierende als Testpersonen) und das Problem lässt sich gut mit einer Web-App mit Datenbank angehen. Die Problemräume 1–3 haben denselben Kern: **Informationen sind auf zu viele Orte verteilt.**

---

## Teil 2 – Problemraum-Analyse

### Nutzer:innen

**2.1 Wer hat das Problem?**

Viele Studierende haben Mühe, ihr Studienleben zu organisieren. Die Hochschule stellt zwar gute Tools zur Verfügung, aber der Input kommt über zu viele Plattformen (Moodle, Outlook/E-Mail, Teams usw.). Viele Kommiliton:innen teilen dieses Problem und verlieren schnell den Überblick. Am grössten ist es vermutlich bei **Vollzeitstudierenden**: Sie haben die meisten Module und damit am meisten Input, den sie verarbeiten müssen.

**2.2 Unterschiede zwischen den Gruppen**

- **Vollzeitstudierende:** viele Module parallel, viele Leistungsnachweise gleichzeitig → Problem vor allem *Menge*.
- **Vollzeit mit Nebenjob** (wie ich): weniger freie Zeitfenster, Lernzeit muss geplant werden → Problem vor allem *Zeit*.
- **Teilzeit-/berufsbegleitend Studierende:** weniger Module, aber nur abends/am Wochenende Zeit; verpasste Infos fallen erst spät auf.
- **Erstsemestrige:** kennen Plattformen und Abläufe noch nicht → Problem vor allem *Orientierung*.

### Heutige Situation & Tools

**2.3 Tools heute**

| Tool | Wofür nutze ich es? | Was stört mich daran? |
|---|---|---|
| Moodle | Unterlagen, Übungen, Abgaben, Deadline-Ansicht | Deadline-Ansicht unvollständig, weicht teils vom Semesterprogramm ab; jedes Modul anders aufgebaut; keine Verbindung zu anderen Tools |
| Semesterprogramm (PDF je Modul) | Gesamtplan des Semesters, Termine der Leistungsnachweise | Statisches PDF, Änderungen kommen nicht automatisch nach |
| ZHAW-Mail / Outlook | Ankündigungen, Terminänderungen | Wichtiges geht zwischen vielen Mails unter |
| MS Teams | Kommunikation in einzelnen Modulen/Gruppen | Ein weiterer Kanal, den man prüfen muss |
| Apple Erinnerungen / Kalender | Eine Liste pro Modul mit Programm, Übungen, Deadlines | Termine werden über einen selbst gebauten KI-Skill aus den Semesterprogrammen importiert – das funktioniert, ist aber umständlich und muss bei jeder Änderung neu angestossen bzw. von Hand korrigiert werden |
| Notion | Zusammenfassungen der Vorlesungen, Lernorganisation | Gut für Inhalte, aber Deadlines sind dort nicht drin; wieder ein separater Ort |

**2.4 Typischer Ablauf bei einer neuen Abgabe**

1. Die Abgabe wird in der Vorlesung, auf Moodle oder per Mail angekündigt.
2. Ich prüfe, ob sie im Semesterprogramm steht und ob das Datum übereinstimmt.
3. Ich übertrage sie in Apple Erinnerungen (über den Skill oder von Hand).
4. Unterlagen/Aufgabenstellung bleiben auf Moodle, meine Notizen in Notion.
5. Bei Änderungen (neues Datum, neue Infos per Mail) muss ich alles an mehreren Orten nachführen.

→ Pro Abgabe 3–4 Orte, vieles manuell.

**2.5 Zeitaufwand fürs Organisieren**

Zu Semesterbeginn dauert es **rund eine Woche**, bis alle Module, Termine und Leistungsnachweise erfasst sind. Danach kommt laufender Aufwand für das Nachschauen, Abgleichen und Nachführen von Änderungen dazu.

### Probleme & Herausforderungen

**2.6 Konkretes Beispiel**

Für dieselbe Abgabe stehen auf verschiedenen Kanälen – z. B. Moodle, Semesterprogramm und eine Mail oder Ankündigung – **unterschiedliche Deadlines**. Ich weiss dann nicht, welches Datum gilt, und muss jedes Mal bei den Dozierenden oder Mitstudierenden nachfragen. Das kostet Zeit, ist nervig und verunsichert, weil ich mich auf keine Quelle wirklich verlassen kann.

**2.7 Was ist am mühsamsten an verteilten Infos?**

- Ich weiss nie sicher, ob ich **alles** gesehen habe – es gibt keine vollständige, verlässliche Quelle.
- Widersprüchliche Angaben zwischen den Kanälen zwingen zum Nachfragen.
- Doppelte Arbeit: dieselbe Info an mehreren Orten erfassen und nachführen.
- Kein Gesamtbild: Ich sehe nicht, welche Woche besonders voll wird.

**2.8 Erschwerende Rahmenbedingungen**

- Nebenjob neben dem Vollzeitstudium → feste Lerntage, wenig Puffer.
- Jedes Modul bzw. jede:r Dozierende organisiert Moodle anders.
- Verschiedene Geräte (Mac, iPhone) – Infos müssen überall verfügbar sein.
- Hochschulsysteme bieten kaum offene Schnittstellen → Automatisierung nur über Umwege.

### Bedürfnisse

**2.9 Wie sähe ein «perfekter» Semesterüberblick aus?**

Ich öffne **einen** Ort und weiss innert Sekunden: Was steht diese Woche an? Was ist als Nächstes fällig? Wo stehe ich in jedem Modul? Ich kann mich darauf verlassen, dass dort das gültige Datum steht, und muss nicht mehr an mehreren Orten suchen, abgleichen oder nachfragen.

**2.10 Was ist am wichtigsten?**

1. Nichts verpassen – Vollständigkeit und Verlässlichkeit
2. Weniger Aufwand fürs Erfassen, Übertragen und Suchen
3. Überblick über die Belastung (welche Woche wird voll)
4. Weniger Stress

---

## Teil 3 – How Might We

- **HMW 1:** Wie könnten wir Studierenden helfen, alle Abgaben und Leistungsnachweise eines Semesters an einem Ort zuverlässig im Blick zu behalten?
- **HMW 2:** Wie könnten wir das Erfassen und Nachführen von Terminen aus Moodle, Semesterprogramm und Mails so vereinfachen, dass keine Änderung verloren geht und klar ist, welches Datum gilt?
- **HMW 3:** Wie könnten wir Studierenden mit Nebenjob helfen, früh zu erkennen, welche Wochen intensiv werden, und ihre Lernzeit danach zu planen?

---

## Teil 4 – Recherche

**4.1 Bestehende Lösungen**

- **Moodle (Deadline-Ansicht/Kalender):** direkt an der Quelle, aber unvollständig und nicht mit anderen Tools verbunden.
- **Apple Erinnerungen / Kalender:** immer dabei, aber ohne Modul-/Semesterbezug; Import nur über eigene Umwege.
- **Notion (Studien-Vorlagen):** sehr flexibel, aber Aufbau und Pflege aufwendig; Deadlines müssen ebenfalls manuell rein.
- **Studienplaner-Apps (z. B. MyStudyLife):** auf Studierende zugeschnitten (Stundenplan, Aufgaben, Prüfungen), aber manuelle Erfassung und nicht auf ZHAW-Abläufe (Semesterprogramm, Leistungsnachweise) ausgerichtet.
- **Allgemeine To-do-Apps (z. B. Todoist):** gute Aufgabenverwaltung, aber kein Semesterüberblick.

**4.2 Warum reicht keine davon?**

Keine Lösung ist auf den Studienkontext «Module → Leistungsnachweise → Lernzeit» zugeschnitten *und* einfach genug, dass sich die Pflege lohnt. Deshalb kombiniere ich mehrere Tools – was das ursprüngliche Problem (zu viele Orte) wieder verstärkt.

**Erkenntnisse aus der Recherche**

- Es gibt viele Tools, aber jedes deckt nur einen Teil ab → der Überblick entsteht erst im Kopf der Studierenden.
- Der grösste Aufwand liegt im **Erfassen und Nachführen**, nicht im Anschauen.
- Verlässlichkeit (welches Datum gilt?) ist mindestens so wichtig wie Vollständigkeit.
