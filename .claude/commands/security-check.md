Führe einen Security-Check für StudyDesk durch (SvelteKit + MongoDB). Bereich: «$ARGUMENTS» (leer = ganzes Projekt, z. B. «Login» oder «#36»).

**Modell:** Diesen Check im Plan-Modus ausführen (Shift+Tab bzw. `/plan`), damit mit `opusplan` Opus prüft (D21). Nur prüfen und berichten – **nichts ändern**, bis Matteo die Korrekturen freigibt.

Prüfe der Reihe nach und nenne bei jedem Fund Datei und Zeile:
1. **Secrets:** `.env` nicht im Repo (auch nicht in der Git-Historie), keine Verbindungsdaten, Schlüssel oder Passwörter im Code, in Logs oder in Screenshots unter `docs/`.
2. **Passwörter & Login:** Passwörter nur gehasht (bcrypt/argon2), nie im Klartext; Fehlermeldung beim Login verrät nicht, ob die E-Mail existiert; Session-Cookie mit `httpOnly`, `secure`, `sameSite`; Logout beendet die Session.
3. **Zugriffsrechte:** Jede `load`-Funktion und jede Form Action prüft `locals.user`; jede DB-Abfrage in `src/lib/server/db.js` filtert nach `userId`, damit niemand über eine ID in der URL fremde Module, Abgaben oder Lernzeiten sieht oder ändert.
4. **Eingaben:** Jede Form Action validiert serverseitig (Pflichtfelder, Typ, Länge, Datum); keine Objekte aus dem Request direkt in Mongo-Abfragen (NoSQL-Injection, z. B. `{ $gt: "" }`); IDs vor `new ObjectId()` prüfen.
5. **Ausgabe:** kein `{@html}` mit Nutzereingaben (XSS).
6. **CSRF:** SvelteKit-Schutz aktiv (`csrf.checkOrigin` in `svelte.config.js` nicht deaktiviert).
7. **Fehler:** keine Stacktraces oder DB-Fehlermeldungen im Browser; verständliche Meldung für Nutzende.
8. **Abhängigkeiten:** `npm audit` ausführen und auswerten – **nie** `npm audit fix --force` (D6).

**Ausgabe:** Liste nach Schwere 🔴 kritisch · 🟡 sollte behoben werden · 🟢 Hinweis, je mit Fundstelle, Risiko in einem Satz und Korrekturvorschlag. Danach: Vorschlag für Issue(s), Eintrag für `docs/ai-log.md` (mit verwendetem Modell; falls ein Schutzfilter auf ein anderes Modell umgeschaltet hat, vermerken) und Screenshot der Ausgabe → `docs/extensions/JJJJ-MM-TT_security-check.png`.
