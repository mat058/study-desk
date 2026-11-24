#!/usr/bin/env bash
# Benennt Figma-Exporte («M03 Dashboard.png» …) nach Screenshot-Konvention um.
# Aufruf im Repo-Root, nachdem die PNGs nach docs/03-decide/mockup/ exportiert wurden:
#   bash scripts/rename-mockup-exports.sh
cd "$(dirname "$0")/../docs/03-decide/mockup" || exit 1
ren() { for f in "$1"*.png; do [ -e "$f" ] && mv -v "$f" "2026-11-24_$2.png"; done; }
ren "M01" m01-login
ren "M02" m02-registrieren
ren "M03" m03-dashboard
ren "M04" m04-abgaben-liste
ren "M05" m05-abgaben-kanban
ren "M06" m06-abgabe-formular
ren "M07" m07-module
ren "M08" m08-modul-space
ren "M09" m09-modul-formular
ren "M10" m10-kalender
ren "M11" m11-lernzeit
ren "M12" m12-noten
ren "M13" m13-archiv
ren "M14" m14-loeschen-overlay
ren "M15" m15-noten-einstellen-overlay
ren "M16" m16-einstellungen
ren "M17" m17-widgets-overlay
ren "M18" m18-kalender-abo-overlay
