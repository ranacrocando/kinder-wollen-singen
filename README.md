# Gemeinfreie Weihnachtslieder

Dieses Repository enthält gemeinfreie deutsche Weihnachtslieder als [Lilypond](https://lilypond.org/)-Dateien.
Das Repository basiert auf der [Vorarbeit von Patrick Stein (aka Jollyjinx)](https://github.com/jollyjinx/kinder-wollen-singen),
der wiederum Teile des unter "Creative Commons" lizensierten Materials von der (nicht mehr existierenden) Musikpiraten-Website kopiert hatte.

## Urheberrecht
Dieses Repository ist, sofern nicht in einzelne Dateien anders angegeben, unter der [Creative Commons Public Domain License](http://creativecommons.org/publicdomain/zero/1.0/deed.de) lizensiert.

## Unter der Haube
Nur die `.ly`-Dateien werden in git verwaltet.
Es gibt
1. einzelne Weihnachtslieder
2. eine große [`weihnachtslieder.ly`](books/weihnachtslieder.ly)-Datei, die alle einzelnen Weihnachtslieder in einer großen Datei zusammenfasst.

[Eine Github Action](.github/workflows/release-pdf.yml) konvertiert für jeden Pull Request und für jedes Release _alle_ `.ly`-Dateien zu PDF-Dateien.
Die so erzeugten PDF-Dateien sind dann in den Action- bzw. Release-Artifacts verfügbar.

### Unterschiede zum geforkten Repository von Jollyjinx
Diese CI ist ein wesentlicher Unterschied zu Jollyinx Repository, bei dem die Datein händisch/lokal konvertiert werden mussten (wahrscheinlich auch, weil es damals noch keine Github Actions gab).
Außerdem verzichten wir hier auf LaTex bzw. `lilypond-book`, was uns zwar ein bisschen Flexibilität nimmt aber das Setup als Ganzes deutlich vereinfacht.
