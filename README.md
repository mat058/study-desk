# Projektdokumentation - StudyDesk

## Projektübersicht & Zugänge

| Angabe | Inhalt |
|---|---|
| Projekttitel | StudyDesk |
| Verfasser/in | Matteo Rotzer, _[Klasse]_ |
| GitHub-Repository | https://github.com/mat058/study-desk |
| Aktuelle App | https://study-desk-mr.netlify.app |
| Getestete Version | _[Link; Commit/Tag]_ |
| Testzugänge | _[Testkonten je Rolle oder Bereitstellungsweg; andernfalls «Nicht erforderlich»]_ |
| Figma / Referenz-Mockup | _[Direkter Link]_ |
| Weitere Artefakte [Optional] | Projektboard: https://github.com/users/mat058/projects/2 |

> **Zugriff:** Stellt sicher, dass alle Dozierenden auf das Repository, die App und die verlinkten Artefakte zugreifen können.

> **Testzugänge:** Verwendet eigens eingerichtete Testkonten mit unkritischen Daten. Bei einem öffentlichen Repository gebt ihr hier nur den vereinbarten Bereitstellungsweg an. Persönliche Passwörter, API-Schlüssel und andere Geheimnisse dürfen nicht im Repository stehen.

<!-- Zentrale Projektlinks ausschliesslich in der Projektübersicht pflegen. Spezifische Nachweise wie Codestellen oder Testprotokolle direkt im jeweiligen Fachkapitel verlinken. -->

## Inhaltsverzeichnis

[Projektübersicht & Zugänge](#projektübersicht--zugänge)

1. [Ausgangslage](#1-ausgangslage)
2. [Lösungsidee](#2-lösungsidee)
3. [Vorgehen & Artefakte](#3-vorgehen--artefakte)
    1. [Understand & Define](#31-understand--define)
    2. [Sketch](#32-sketch)
    3. [Decide](#33-decide)
    4. [Prototype](#34-prototype)
    5. [Validate](#35-validate)
4. [Erweiterungen [Optional]](#4-erweiterungen-optional)
5. [Projektorganisation [Optional]](#5-projektorganisation-optional)
6. [KI-Deklaration](#6-ki-deklaration)
7. [Anhang [Optional]](#7-anhang-optional)

> **Hinweis:** Massgeblich sind die im **Unterricht** und auf **Moodle** kommunizierten Anforderungen.

<!-- Diese Vorlage ist für eine README.md im Repository gedacht. -->

<!-- WICHTIG: Reihenfolge, Nummerierung und Benennung der vorgegebenen Kapitel beibehalten. Als [Optional] gekennzeichnete Abschnitte dürfen entfallen, sofern in den Übungen nichts anderes verlangt wird. Ohne KI-Einsatz dürfen zudem die Unterkapitel 6.1–6.3 entfallen; die ausdrückliche Angabe dazu in Kap. 6 bleibt verpflichtend. Die in Kap. 4 vorgesehenen Einträge für einzelne Erweiterungen sind entsprechend zu ergänzen. -->

## 1. Ausgangslage
Kurz beschreiben, welches Problem adressiert wird und welches Ergebnis angestrebt ist. Wem nützt die Lösung, wer ist beteiligt oder betroffen?
- **Problem:** Studierende erhalten Termine, Abgaben und Leistungsnachweise über viele Kanäle (Moodle, Semesterprogramm-PDFs, E-Mail, Teams). Es gibt keinen vollständigen, verlässlichen Überblick: Die Moodle-Deadline-Ansicht ist unvollständig, Angaben widersprechen sich teilweise zwischen den Kanälen, und mangels Schnittstellen muss alles manuell in eigene Tools (z. B. Apple Erinnerungen, Notion) übertragen und nachgeführt werden. *Beispiel:* Für dieselbe Abgabe stehen in Moodle, im Semesterprogramm und in einer Mail unterschiedliche Daten – man muss jedes Mal nachfragen, welches gilt. Allein das Erfassen zu Semesterbeginn dauert rund eine Woche.
- **Ziele:**
  - Alle Module, Abgaben und Leistungsnachweise eines Semesters an **einem** Ort
  - Auf einen Blick sehen, was als Nächstes fällig ist und welche Wochen intensiv werden
  - Widersprüchliche oder geänderte Termine erkennen statt übersehen
  - Weniger Aufwand fürs Erfassen und Nachführen
- **Primäre Zielgruppe:** Bachelor-Studierende der ZHAW (insbesondere Vollzeitstudierende mit vielen Modulen und Studierende mit Nebenjob), die ihr Semester selbst organisieren.
- **Weitere Stakeholder [Optional]:** Dozierende (pflegen Moodle und Semesterprogramme; Quelle der Termine), Mitstudierende (Austausch über gültige Termine).

Details: [Übung 8 – Understand & Define (PDF)](docs/01-understand/Uebung8_Understand-Define_StudyDesk_Rotzer.pdf)


## 2. Lösungsidee
Beschreibt die Lösungsidee.
- **Kernfunktionalität:** _[Workflows kurz nennen und optional illustrieren]_  
- **Annahmen [Optional]:** _[welche Hypothesen werden geprüft?]_
- **Abgrenzung [Optional]:** _[Was gehört explizit nicht zum Umfang?]_

## 3. Vorgehen & Artefakte
Die Durchführung erfolgt phasenbasiert; dokumentiert die wichtigsten Ergebnisse je Phase.

### 3.1 Understand & Define
- **Zielgruppenverständnis:**
  - *Problemräume:* vier Problemräume gesammelt (fehlender zentraler Überblick, fehlende Schnittstellen, zu viele Apps für den gleichen Zweck, Faszination KI); gewählt wurde «Studium organisieren», weil selbst täglich betroffen und die Zielgruppe für Tests direkt erreichbar ist.
  - *Problemraum-Analyse:* Nutzergruppen (Vollzeit, Vollzeit mit Nebenjob, Teilzeit, Erstsemestrige), heutige Tools mit Schwächen, typischer Ablauf bei einer neuen Abgabe, Bedürfnisse.
  - *How Might We:* (1) Wie könnten wir Studierenden helfen, alle Abgaben und Leistungsnachweise eines Semesters an einem Ort zuverlässig im Blick zu behalten? (2) Wie könnten wir das Erfassen und Nachführen von Terminen so vereinfachen, dass keine Änderung verloren geht und klar ist, welches Datum gilt? (3) Wie könnten wir Studierenden mit Nebenjob helfen, früh zu erkennen, welche Wochen intensiv werden?
  - *Recherche:* Moodle, Apple Erinnerungen/Kalender, Notion-Vorlagen, Studienplaner-Apps (z. B. MyStudyLife), To-do-Apps.
  - *(Proto-)Personas:* [Julian](docs/01-understand/2026-11-10_personas.md#persona-1--julian-der-effiziente-mit-nebenjob) – Vollzeit mit Nebenjob, knappe Zeit, will eine verlässliche Quelle und die Wochen-Auslastung sehen · [Leonie](docs/01-understand/2026-11-10_personas.md#persona-2--leonie-die-erstsemestrige-im-kanal-dschungel) – Erstsemestrige ohne Job, überflutet von Kanälen, braucht sofort «Was ist jetzt dran?».
  - Vollständige Ausarbeitung: [Antworten Übung 8](docs/01-understand/2026-11-10_antworten-uebung8.md) · [PDF](docs/01-understand/Uebung8_Understand-Define_StudyDesk_Rotzer.pdf)
- **Wesentliche Erkenntnisse:**
  - Es gibt viele Tools, aber jedes deckt nur einen Teil ab – der Überblick entsteht erst im Kopf der Studierenden.
  - Der grösste Aufwand liegt im **Erfassen und Nachführen**, nicht im Anschauen.
  - **Verlässlichkeit** (welches Datum gilt?) ist mindestens so wichtig wie Vollständigkeit.
  - Ohne offene Schnittstellen der Hochschulsysteme muss die Lösung manuelles Erfassen so schnell wie möglich machen und Mehrwert *auf* den erfassten Daten bieten (z. B. Widersprüche, Belastung).

### 3.2 Sketch
- **Variantenüberblick:** _[kurz]_
- **Skizzen:** _[Mehrere Varianten; Unterschiede kurz dokumentieren.]_

### 3.3 Decide
- **Gewählte Variante & Begründung:** _[Entscheidkriterien nennen]_  
- **End-to-End-Ablauf:** _[Beschreibung inkl. User Journey Map]_  
- **Mockup:** Link siehe «Figma / Referenz-Mockup» in der [Projektübersicht](#projektübersicht--zugänge). _[Screenshots mit kurzen Beschreibungen]_

### 3.4 Prototype

#### 3.4.1. Entwurf (Design)
Beschreibt die Gestaltung und Interaktion.
> **Hinweis:** Hier wird der **Prototyp** beschrieben, nicht das **Mockup**.
- **Informationsarchitektur:** _[z. B. Seiten/Navigation: Konzept, nicht die technische Umsetzung]_
- **User Interface Design:** _[wichtige Screens: Screenshots mit kurzen Erläuterungen]_  
- **Designentscheidungen:** _[zentrale Entscheidungen und Begründungen]_

#### 3.4.2. Umsetzung (Technik)
Fasst die technische Realisierung zusammen.
- **Technologie-Stack:** SvelteKit 3 (verbindliche Vorgabe). _[Verwendete Bibliotheken ergänzen, falls genutzt.]_
- **Tooling:** _[IDE/Erweiterungen, lokale/Cloud-Tools; den Einsatz von KI beschreibt ihr im Kapitel **KI-Deklaration**]_  
- **Vorgehen bei der Implementierung:** _[Wie wurde die Umsetzung schrittweise erarbeitet? Wie wurden Funktionen entwickelt, geprüft und überarbeitet? Bei KI-Unterstützung: Zusammenspiel zwischen eigener Arbeit und KI kurz beschreiben und für Details auf Kap. 6 verweisen.]_
- **Struktur & Komponenten:** _[Seiten, Routen, State/Stores, wichtige Komponenten]_
- **Daten & Schnittstellen:** _[Wie werden Daten gespeichert, verwaltet, abgerufen?]_
- **Deployment:** Link siehe «Aktuelle App» in der [Projektübersicht](#projektübersicht--zugänge).
- **Besondere Entscheidungen:** _[z. B. Trade-offs, Vereinfachungen]_  

### 3.5 Validate

> **Hinweis:** Die Evaluation muss nachvollziehbar dokumentiert sein. Belegt die beschriebenen Beobachtungen und Resultate durch geeignete Nachweise und verlinkt diese im Feld «Nachweise». Die Materialien können im Repository abgelegt oder im Anhang aufgeführt werden. Personenbezogene Angaben sind zu anonymisieren.

- **Getestete Version:** Separat deployt; Link und Commit/Tag siehe «Getestete Version» in der [Projektübersicht](#projektübersicht--zugänge).
- **Ziele der Prüfung:** _[welche Fragen sollen beantwortet werden?]_  
- **Vorgehen:** _[moderiert/unmoderiert; remote/on-site]_  
- **Stichprobe:** _[Mit wem wurde getestet? Profil; Anzahl]_  
- **Aufgaben/Szenarien:** _[Ausformulierte Testaufgaben]_  
- **Kennzahlen & Beobachtungen:** _[z. B. Erfolgsquote, Zeitbedarf, qualitative Findings]_  
- **Nachweise:** _[Verweise auf anonymisierte Testprotokolle, Beobachtungsnotizen, Auswertungstabellen oder andere geeignete Belege für die beschriebenen Beobachtungen und Resultate]_
- **Zusammenfassung der Resultate:** _[Wichtigste Erkenntnisse; 2-4 Sätze]_  
- **Abgeleitete Verbesserungen:** _[Anforderungen, die als nächstes umgesetzt werden sollten, priorisiert, kurz begründet. Umgesetzte Verbesserungen hier kurz beschreiben. Gehen sie über den Mindestumfang hinaus, zusätzlich nach dem Schema in Kap. 4 dokumentieren.]_

## 4. Erweiterungen [Optional]
Dokumentiert hier Erweiterungen über den Mindestumfang hinaus. Ordnet jede Erweiterung einem der beiden Unterkapitel zu und beschreibt sie einzeln.

> **Hinweis zur Bewertung:** Nur dokumentierte Erweiterungen werden bewertet. Für nicht dokumentierte Erweiterungen oder Erweiterungen, deren Beschreibung bzw. Nachweise die folgenden Vorgaben nicht erfüllen, werden keine Punkte vergeben.

> **Verbindliche Struktur:** Jede Erweiterung muss vollständig und exakt nach dem Schema des jeweiligen Unterkapitels beschrieben werden. Alle Felder sind mit unveränderten Bezeichnungen und in der vorgegebenen Reihenfolge auszufüllen. Wiederholt das Schema für jede weitere Erweiterung und nummeriert die Einträge fortlaufend (4.1.2, 4.1.3 bzw. 4.2.2, 4.2.3). Zusätzliche Erläuterungen innerhalb der Felder sind möglich.

> **Erforderliche Nachweise:** Fügt zu jeder Erweiterung nach Möglichkeit mindestens einen aussagekräftigen Screenshot mit kurzer Erläuterung ein. Falls ein Screenshot nicht sinnvoll möglich ist, begründet dies kurz im Feld «Nachweise» und gebt einen anderen geeigneten Nachweis an. Bei Erweiterungen mit Code sind zusätzlich die relevanten Codestellen zu referenzieren, beispielsweise durch Links auf Dateien und die betreffenden Funktionen oder Zeilenbereiche.

### 4.1 Software-Erweiterungen
Hierzu gehören zusätzliche Funktionen und technische Verbesserungen am Prototyp.

#### 4.1.1 [Titel der Erweiterung]
- **Beschreibung & Nutzen:** _[Was wurde erweitert und welchen Mehrwert bietet es?]_
- **Abgrenzung zum Mindestumfang:** _[Was geht konkret über die verbindlichen Anforderungen hinaus?]_
- **Umsetzung:** _[Wie und wo wurde die Erweiterung umgesetzt?]_
- **Nachweise:** _[Screenshot(s) mit Erläuterung; Referenzen auf die relevanten Codestellen; gegebenenfalls weitere Belege]_
- **Bezug zur Evaluation:** _[Wurde die Erweiterung aus der Evaluation abgeleitet? Falls ja: auf die betreffende Beobachtung bzw. das Issue verweisen. Andernfalls: «Nein».]_

### 4.2 Weitere Erweiterungen
Hierzu gehören beispielsweise zusätzliche Methoden, Planungs- und Analyseartefakte, Verbesserungen der Projektorganisation oder Anpassungen eines KI-Agenten-Workflows.

#### 4.2.1 [Titel der Erweiterung]
- **Beschreibung & Nutzen:** _[Was wurde zusätzlich erarbeitet oder verbessert und welchen Mehrwert bietet es?]_
- **Abgrenzung zum Mindestumfang:** _[Was geht konkret über die verbindlichen Anforderungen hinaus?]_
- **Umsetzung:** _[Wie wurde vorgegangen und was ist das Ergebnis?]_
- **Nachweise:** _[Screenshot(s) mit Erläuterung; Links auf Artefakte, Konfigurationen oder andere Ergebnisse; bei Code zusätzlich Referenzen auf die relevanten Codestellen]_
- **Bezug zur Evaluation:** _[Wurde die Erweiterung aus der Evaluation abgeleitet? Falls ja: auf die betreffende Beobachtung bzw. das Issue verweisen. Andernfalls: «Nein».]_

## 5. Projektorganisation [Optional]

> **Hinweis:** Verbesserungen der Projektorganisation, für die Erweiterungspunkte beansprucht werden, müssen nach dem Schema in Kap. 4.2 dokumentiert werden. Verweist dort bei Bedarf auf die Beschreibung in diesem Kapitel, um Wiederholungen zu vermeiden.

Beispiele:
- **Repository & Struktur:** Repository-Link siehe [Projektübersicht](#projektübersicht--zugänge). _[Kurze Strukturübersicht]_
- **Issue-Management:** _[Vorgehen kurz beschreiben]_  
- **Commit-Praxis:** _[z. B. sprechende Commits]_

## 6. KI-Deklaration
Die folgende Deklaration ist verpflichtend und beschreibt den Einsatz von KI im Projekt.

> **Hinweis:** Dokumentiert den KI-Einsatz im gesamten Projekt, einschliesslich der Implementierung und eines allfälligen Einsatzes von KI-Agenten (Agentic Coding). Beschreibt die tatsächlich praktizierte Arbeitsweise. Falls keine KI eingesetzt wurde, gebt dies ausdrücklich an; die Unterkapitel 6.1–6.3 können dann entfallen.

### 6.1 KI-Tools
- **Eingesetzte Tools**: _[z. B. Copilot, ChatGPT, Claude, lokale Modelle; Version/Variante wenn bekannt]_
- **Zweck & Umfang**: _[wie, wofür und in welchem Ausmass wurde KI eingesetzt (z. B. Textentwürfe, Codevorschläge, Tests, Refactoring); welche Teile stammen (ganz/teilweise) aus KI-Unterstützung?]_
- **Eigene Leistung (Abgrenzung):** _[was ist eigenständig erarbeitet/überarbeitet worden?]_

### 6.2 Vorgehen mit KI
- **Arbeitsablauf & Aufgabenverteilung:** _[Wie wurde mit KI gearbeitet? Welche Aufgaben wurden selbst übernommen, welche an KI übertragen? Bei Agentic Coding: Welche Handlungsspielräume hatten die Agenten und wann wurde eingegriffen?]_
- **Prompt-Vorgehen & Kontext:** _[Wie wurden Aufgaben formuliert und relevante Informationen bereitgestellt? Grundlegende Vorgehensweise beschreiben; konkrete Prompts höchstens als Beispiele aufführen.]_
- **Konfiguration & Werkzeuge:** _[Falls verwendet: projektspezifische Agenten-Anweisungen, Konfigurationen, Kontextdateien und Tool-Anbindungen beschreiben und im Repository referenzieren. Andernfalls: «Keine».]_
- **Prüfung & Überarbeitung:** _[Wie wurden KI-Ergebnisse auf Korrektheit, Qualität und Urheberrecht/Quellen geprüft? Wie wurden Fehler erkannt und Ergebnisse überarbeitet?]_

### 6.3 Reflexion
_[Nutzen, Grenzen, Risiken/Qualitätssicherung, ...]_

## 7. Anhang [Optional]

> **Hinweis zu Quellen und Urheberrecht:** Bei Verwendung fremder Inhalte (z. B. Code, Texte, Bilder, Icons, Vorlagen oder Modelle) sind die Quellen und die geltenden Lizenzen bzw. Nutzungsbedingungen anzugeben und einzuhalten. Diese Angaben sind verpflichtend, auch wenn der Anhang weggelassen wird. Sie können alternativ an den betreffenden Stellen der Dokumentation oder in einer verlinkten Quellenübersicht im Repository stehen. Erforderliche Hinweise direkt im Code oder bei verwendeten Inhalten bleiben zusätzlich bestehen.

Beispiele:
- **Quellen:** _[verwendete fremde Inhalte; Quelle/Link; Lizenz bzw. Nutzungsbedingungen]_
- **Testskript & Materialien:** _[Link/Datei]_  
- **Rohdaten/Auswertung:** _[Link/Datei]_  

