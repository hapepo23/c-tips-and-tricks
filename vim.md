# VIM (vi improved)

### Hier ist eine Übersicht wichtiger Vim-Kommandos, die in den Eingabemodus (Insert Mode) wechseln und anschließend mit Esc beendet werden:

| Kommando      | Beschreibung                                                                       |
| ------------- | ---------------------------------------------------------------------------------- |
| `i`           | Einfügen vor dem Cursor                                                            |
| `I`           | Einfügen am Anfang der aktuellen Zeile                                             |
| `a`           | Einfügen hinter dem Cursor                                                         |
| `A`           | Einfügen am Ende der aktuellen Zeile                                               |
| `o`           | Neue Zeile unterhalb der aktuellen öffnen und einfügen                             |
| `O`           | Neue Zeile oberhalb der aktuellen öffnen und einfügen                              |
| `s`           | Zeichen unter dem Cursor löschen und in den Eingabemodus wechseln                  |
| `S`           | Gesamte aktuelle Zeile löschen und in den Eingabemodus wechseln (entspricht `cc`)  |
| `c{Bewegung}` | Text entsprechend der Bewegung ändern, z. B. `cw`, `c$`, `c0`                      |
| `cc`          | Ganze Zeile ändern                                                                 |
| `C`           | Vom Cursor bis zum Zeilenende ändern (entspricht `c$`)                             |
| `r`           | **Kein** Eingabemodus – ersetzt genau **ein** Zeichen und kehrt automatisch zurück |
| `R`           | Überschreibmodus (Replace Mode), wird mit `Esc` beendet                            |
| `gI`          | Einfügen am absoluten Zeilenanfang (Spalte 1, ignoriert Einrückung)                |

---

### Hier ist eine Übersicht wichtiger Vim-Kommandos, die nicht in den Eingabemodus (Insert Mode) wechseln. Diese Befehle funktionieren im Normalmodus.

| Kommando | Funktion                                         |
| -------- | ------------------------------------------------ |
| `h`      | Cursor nach links                                |
| `j`      | Cursor nach unten                                |
| `k`      | Cursor nach oben                                 |
| `l`      | Cursor nach rechts                               |
| `w`      | Zum Anfang des nächsten Wortes                   |
| `W`      | Zum nächsten Wort (Leerzeichen als Trenner)      |
| `b`      | Zum Anfang des vorherigen Wortes                 |
| `B`      | Zum vorherigen Wort (Leerzeichen als Trenner)    |
| `e`      | Zum Ende des aktuellen/nächsten Wortes           |
| `0`      | Zum Zeilenanfang                                 |
| `^`      | Zum ersten Nicht-Leerzeichen der Zeile           |
| `$`      | Zum Zeilenende                                   |
| `gg`     | Zur ersten Zeile                                 |
| `G`      | Zur letzten Zeile                                |
| `nG`     | Zu Zeile *n* springen                            |
| `Ctrl+d` | Eine halbe Seite nach unten                      |
| `Ctrl+u` | Eine halbe Seite nach oben                       |
| `Ctrl+f` | Eine Seite nach unten                            |
| `Ctrl+b` | Eine Seite nach oben                             |
| `%`      | Passende Klammer finden                          |
| `*`      | Nächstes Vorkommen des Wortes unter dem Cursor   |
| `#`      | Vorheriges Vorkommen des Wortes unter dem Cursor |
| `/text`  | Vorwärts suchen                                  |
| `?text`  | Rückwärts suchen                                 |
| `n`      | Nächsten Suchtreffer                             |
| `N`      | Vorherigen Suchtreffer                           |

---

### Bearbeiten (ohne Insert-Modus)

| Kommando | Funktion                                    |
| -------- | ------------------------------------------- |
| `x`      | Zeichen unter Cursor löschen                |
| `X`      | Zeichen links vom Cursor löschen            |
| `dd`     | Aktuelle Zeile löschen                      |
| `ndd`    | *n* Zeilen löschen                          |
| `dw`     | Wort löschen                                |
| `d$`     | Bis Zeilenende löschen                      |
| `D`      | Bis Zeilenende löschen                      |
| `yy`     | Zeile kopieren                              |
| `nyy`    | *n* Zeilen kopieren                         |
| `yw`     | Wort kopieren                               |
| `p`      | Hinter Cursor einfügen                      |
| `P`      | Vor Cursor einfügen                         |
| `u`      | Rückgängig                                  |
| `Ctrl+r` | Wiederherstellen (Redo)                     |
| `r`      | Ein Zeichen ersetzen                        |
| `R`      | Überschreibmodus                            |
| `~`      | Groß-/Kleinschreibung des Zeichens wechseln |
| `J`      | Zeilen zusammenfügen                        |
| `.`      | Letzte Änderung wiederholen                 |

---

### Operatoren mit Bewegungen

| Kommando      | Funktion                                    |
| ------------- | ------------------------------------------- |
| `d{Bewegung}` | Löschen                                     |
| `y{Bewegung}` | Kopieren                                    |
| `c{Bewegung}` | Ändern (führt anschließend in Insert-Modus) |
| `>{Bewegung}` | Einrücken                                   |
| `<{Bewegung}` | Ausrückung entfernen                        |
| `={Bewegung}` | Automatisch formatieren                     |

---

### Bewegungen

| Kommando      | Bedeutung                                                 |
| ------------- | --------------------------------------------------------- |
| `h`           | Ein Zeichen nach links                                    |
| `j`           | Eine Zeile nach unten                                     |
| `k`           | Eine Zeile nach oben                                      |
| `l`           | Ein Zeichen nach rechts                                   |
| `w`           | Zum Anfang des nächsten Wortes                            |
| `W`           | Zum nächsten Wort (Leerzeichen als Trenner)               |
| `b`           | Zum Anfang des vorherigen Wortes                          |
| `B`           | Zum vorherigen Wort (Leerzeichen als Trenner)             |
| `e`           | Zum Ende des aktuellen/nächsten Wortes                    |
| `E`           | Zum Ende des nächsten Worts (Leerzeichen als Trenner)     |
| `ge`          | Zum Ende des vorherigen Wortes                            |
| `0`           | Zum absoluten Zeilenanfang                                |
| `^`           | Zum ersten Nicht-Leerzeichen der Zeile                    |
| `$`           | Zum Zeilenende                                            |
| `g_`          | Zum letzten Nicht-Leerzeichen der Zeile                   |
| `gg`          | Zur ersten Zeile der Datei                                |
| `G`           | Zur letzten Zeile der Datei                               |
| `nG`          | Zu Zeile *n* springen (z. B. `42G`)                       |
| `:{n}`        | Zu Zeile *n* springen (z. B. `:42`)                       |
| `H`           | Zur obersten sichtbaren Zeile                             |
| `M`           | Zur mittleren sichtbaren Zeile                            |
| `L`           | Zur untersten sichtbaren Zeile                            |
| `Ctrl+d`      | Eine halbe Bildschirmseite nach unten                     |
| `Ctrl+u`      | Eine halbe Bildschirmseite nach oben                      |
| `Ctrl+f`      | Eine Bildschirmseite nach unten                           |
| `Ctrl+b`      | Eine Bildschirmseite nach oben                            |
| `zt`          | Aktuelle Zeile oben im Fenster anzeigen                   |
| `zz`          | Aktuelle Zeile mittig im Fenster anzeigen                 |
| `zb`          | Aktuelle Zeile unten im Fenster anzeigen                  |
| `%`           | Zur passenden Klammer springen                            |
| `(`           | Zum vorherigen Satz                                       |
| `)`           | Zum nächsten Satz                                         |
| `{`           | Zum vorherigen Absatz                                     |
| `}`           | Zum nächsten Absatz                                       |
| `f{x}`        | Zum nächsten Zeichen **x** in der Zeile                   |
| `F{x}`        | Zum vorherigen Zeichen **x** in der Zeile                 |
| `t{x}`        | Bis vor das nächste Zeichen **x**                         |
| `T{x}`        | Bis hinter das vorherige Zeichen **x**                    |
| `;`           | Letzte `f`, `F`, `t` oder `T`-Suche wiederholen           |
| `,`           | Letzte `f`, `F`, `t` oder `T`-Suche rückwärts wiederholen |
| `*`           | Nächstes Vorkommen des Wortes unter dem Cursor            |
| `#`           | Vorheriges Vorkommen des Wortes unter dem Cursor          |
| `/Muster`     | Vorwärts nach einem Muster suchen                         |
| `?Muster`     | Rückwärts nach einem Muster suchen                        |
| `n`           | Zum nächsten Suchtreffer                                  |
| `N`           | Zum vorherigen Suchtreffer                                |
| ` ` ``        | Zur vorherigen Cursorposition springen                    |
| `'`           | Zum Anfang der vorherigen Zeile springen                  |
| `m{a-z}`      | Eine Markierung setzen                                    |
| `` `{a-z}` `` | Exakt zur Markierung springen                             |
| `'{a-z}`      | Zum Zeilenanfang der Markierung springen                  |

---

### Fast alle Bewegungen können mit einer Zahl kombiniert werden:

* `5j` – 5 Zeilen nach unten
* `10k` – 10 Zeilen nach oben
* `3w` – 3 Wörter vorwärts
* `2b` – 2 Wörter zurück
* `20G` – Zu Zeile 20 springen
* `4f,` – Zum 4. Komma in der aktuellen Zeile springen

---

### Visueller Modus

| Kommando | Funktion                                 |
| -------- | ---------------------------------------- |
| `v`      | Zeichenweise markieren                   |
| `V`      | Zeilenweise markieren                    |
| `Ctrl+v` | Blockweise markieren                     |
| `o`      | Zum anderen Ende der Markierung springen |

---

### Fenster und Tabs

| Kommando          | Funktion                   |
| ----------------- | -------------------------- |
| `:split` (`:sp`)  | Fenster horizontal teilen  |
| `:vsplit` (`:vs`) | Fenster vertikal teilen    |
| `Ctrl+w h/j/k/l`  | Zwischen Fenstern wechseln |
| `Ctrl+w w`        | Zum nächsten Fenster       |
| `:tabnew`         | Neuen Tab öffnen           |
| `gt`              | Nächster Tab               |
| `gT`              | Vorheriger Tab             |

---

### Datei- und Editorbefehle

| Kommando   | Funktion                                   |
| ---------- | ------------------------------------------ |
| `:w`       | Datei speichern                            |
| `:q`       | Beenden                                    |
| `:wq`      | Speichern und beenden                      |
| `:x`       | Speichern (nur bei Änderungen) und beenden |
| `:q!`      | Ohne Speichern beenden                     |
| `:e datei` | Datei öffnen                               |
| `:e!`      | Datei neu laden und Änderungen verwerfen   |

---

### Nützliche Zusatzbefehle

| Kommando      | Funktion                          |
| ------------- | --------------------------------- |
| `zz`          | Aktuelle Zeile in Bildschirmmitte |
| `zt`          | Aktuelle Zeile oben anzeigen      |
| `zb`          | Aktuelle Zeile unten anzeigen     |
| `m{a-z}`      | Markierung setzen                 |
| `` `{a-z}` `` | Zur Markierung springen           |
| `''`          | Zur vorherigen Cursorposition     |
| `:`           | Ex-Befehlsmodus                   |
| `q:`          | Befehlsverlauf anzeigen           |
| `:noh`        | Suchhervorhebung ausschalten      |

---

### Dateien

| Kommando              | Bedeutung                                    |
| --------------------- | -------------------------------------------- |
| `:e datei`            | Datei öffnen                                 |
| `:e!`                 | Datei neu laden, Änderungen verwerfen        |
| `:w`                  | Aktuelle Datei speichern                     |
| `:wa`                 | Alle geöffneten Dateien speichern            |
| `:q`                  | Aktuelle Datei schließen                     |
| `:q!`                 | Ohne Speichern schließen                     |
| `:wq`                 | Speichern und schließen                      |
| `:x`                  | Speichern (nur bei Änderungen) und schließen |
| `:next` (`:n`)        | Nächste Datei der Argumentliste              |
| `:previous` (`:prev`) | Vorherige Datei                              |
| `:first`              | Erste Datei                                  |
| `:last`               | Letzte Datei                                 |
| `:args`               | Argumentliste anzeigen                       |

---

### Buffer

| Kommando              | Bedeutung                           |
| --------------------- | ----------------------------------- |
| `:ls` oder `:buffers` | Alle Buffer anzeigen                |
| `:b n`                | Zu Buffer **n** wechseln            |
| `:b dateiname`        | Zu Buffer mit diesem Namen wechseln |
| `:bn`                 | Nächster Buffer                     |
| `:bp`                 | Vorheriger Buffer                   |
| `:bf`                 | Erster Buffer                       |
| `:bl`                 | Letzter Buffer                      |
| `:bd`                 | Aktuellen Buffer schließen          |
| `:bd n`               | Buffer **n** schließen              |

---

### Fenster (Splits)

| Kommando          | Bedeutung                      |
| ----------------- | ------------------------------ |
| `:split` (`:sp`)  | Horizontal teilen              |
| `:vsplit` (`:vs`) | Vertikal teilen                |
| `Ctrl+w h`        | Linkes Fenster                 |
| `Ctrl+w j`        | Unteres Fenster                |
| `Ctrl+w k`        | Oberes Fenster                 |
| `Ctrl+w l`        | Rechtes Fenster                |
| `Ctrl+w w`        | Zum nächsten Fenster           |
| `Ctrl+w c`        | Aktuelles Fenster schließen    |
| `Ctrl+w o`        | Alle anderen Fenster schließen |
| `Ctrl+w =`        | Alle Fenster gleich groß       |
| `Ctrl+w +`        | Fenster vergrößern             |
| `Ctrl+w -`        | Fenster verkleinern            |
| `Ctrl+w >`        | Fenster breiter                |
| `Ctrl+w <`        | Fenster schmaler               |

---

### Tabs

| Kommando        | Bedeutung                         |
| --------------- | --------------------------------- |
| `:tabnew`       | Neuen Tab öffnen                  |
| `:tabnew datei` | Datei in neuem Tab öffnen         |
| `:tabclose`     | Aktuellen Tab schließen           |
| `:tabonly`      | Alle anderen Tabs schließen       |
| `:tabs`         | Alle Tabs anzeigen                |
| `gt`            | Nächster Tab                      |
| `gT`            | Vorheriger Tab                    |
| `{n}gt`         | Zu Tab **n** wechseln             |
| `:tabfirst`     | Erster Tab                        |
| `:tablast`      | Letzter Tab                       |
| `:tabnext`      | Nächster Tab                      |
| `:tabprevious`  | Vorheriger Tab                    |
| `:tabmove n`    | Tab an Position **n** verschieben |

#### Praktische Beispiele

| Kommando                | Wirkung                             |
| ----------------------- | ----------------------------------- |
| `vim a.txt b.txt c.txt` | Mehrere Dateien öffnen              |
| `:n`                    | Zur nächsten Datei wechseln         |
| `:vs test.c`            | `test.c` im vertikalen Split öffnen |
| `Ctrl+w l`              | In das rechte Fenster wechseln      |
| `:tabnew main.c`        | `main.c` in neuem Tab öffnen        |
| `2gt`                   | Zum zweiten Tab wechseln            |
| `:wa`                   | Alle geänderten Dateien speichern   |
| `:wqa`                  | Alle speichern und Vim beenden      |

#### Merkhilfe

* **Buffer** = geöffnete Datei im Speicher
* **Fenster (Split)** = Ansicht auf einen Buffer
* **Tab** = Sammlung von einem oder mehreren Fenstern

Ein Tab kann also mehrere Fenster enthalten, und derselbe Buffer kann gleichzeitig in mehreren Fenstern oder Tabs angezeigt werden.

---

### Für die tägliche Arbeit mit Vim sind auch wichtig:

### 1. Textobjekte

Sehr wichtig, weil sie viele Befehle erst richtig mächtig machen.

| Kommando | Bedeutung              |
| -------- | ---------------------- |
| `iw`     | Inneres Wort           |
| `aw`     | Ganzes Wort            |
| `i"`     | Text innerhalb von `"` |
| `a"`     | Text inklusive `"`     |
| `i'`     | Text innerhalb von `'` |
| `i(`     | Innerhalb von `()`     |
| `a(`     | Inhalt inklusive `()`  |
| `i[`     | Innerhalb von `[]`     |
| `i{`     | Innerhalb von `{}`     |
| `ip`     | Innerer Absatz         |
| `ap`     | Ganzer Absatz          |

Beispiele:

* `diw` – aktuelles Wort löschen
* `ci"` – Inhalt der Anführungszeichen ändern
* `yap` – ganzen Absatz kopieren

---

### 2. Operatoren

| Kommando | Bedeutung               |
| -------- | ----------------------- |
| `d`      | Löschen                 |
| `y`      | Kopieren                |
| `c`      | Ändern                  |
| `>`      | Einrücken               |
| `<`      | Ausrücken               |
| `=`      | Automatisch formatieren |
| `gU`     | Großschreiben           |
| `gu`     | Kleinschreiben          |

---

### 3. Makros

| Kommando | Bedeutung                        |
| -------- | -------------------------------- |
| `qa`     | Makro in Register `a` aufnehmen  |
| `q`      | Aufnahme beenden                 |
| `@a`     | Makro aus Register `a` ausführen |
| `@@`     | Letztes Makro wiederholen        |

---

### 4. Register

| Kommando | Bedeutung                             |
| -------- | ------------------------------------- |
| `"ayy`   | In Register `a` kopieren              |
| `"ap`    | Aus Register `a` einfügen             |
| `:reg`   | Register anzeigen                     |
| `"+y`    | In die Systemzwischenablage kopieren  |
| `"+p`    | Aus der Systemzwischenablage einfügen |

---

### 5. Marks (Markierungen)

| Kommando | Bedeutung                                |
| -------- | ---------------------------------------- |
| `ma`     | Markierung `a` setzen                    |
| `` `a `` | Exakt zu Markierung `a` springen         |
| `'a`     | Zum Zeilenanfang der Markierung springen |
| `:marks` | Alle Markierungen anzeigen               |

---

### 6. Suchen und Ersetzen

| Kommando         | Bedeutung                    |
| ---------------- | ---------------------------- |
| `:%s/alt/neu/g`  | Alle Vorkommen ersetzen      |
| `:%s/alt/neu/gc` | Mit Bestätigung ersetzen     |
| `:s/alt/neu/`    | Nur aktuelle Zeile           |
| `:noh`           | Suchhervorhebung ausschalten |

---

### 7. Wiederholen und Rückgängig

| Kommando | Bedeutung                   |
| -------- | --------------------------- |
| `.`      | Letzte Änderung wiederholen |
| `u`      | Rückgängig                  |
| `Ctrl+r` | Wiederherstellen            |

---

### 8. Falten (Folding)

| Kommando | Bedeutung              |
| -------- | ---------------------- |
| `za`     | Falte öffnen/schließen |
| `zo`     | Öffnen                 |
| `zc`     | Schließen              |
| `zR`     | Alle öffnen            |
| `zM`     | Alle schließen         |

---

### 9. Nützliche Ex-Befehle

| Kommando              | Bedeutung                            |
| --------------------- | ------------------------------------ |
| `:help`               | Hilfe                                |
| `:help <Thema>`       | Hilfe zu einem Thema                 |
| `:set number`         | Zeilennummern anzeigen               |
| `:set relativenumber` | Relative Zeilennummern               |
| `:set paste`          | Einfügemodus für kopierten Text      |
| `:set nopaste`        | Paste-Modus deaktivieren             |
| `:!ls`                | Shell-Befehl ausführen               |
| `:r !date`            | Ausgabe eines Shell-Befehls einfügen |

---

### Die wichtigsten Konzepte

Neben einzelnen Kommandos lohnt es sich, diese Vim-Konzepte zu verstehen:

* **Modi:** Normal, Insert, Visual, Command-Line
* **Operator + Bewegung:** `d3w`, `y$`, `ci(`, `>ap`
* **Textobjekte:** `iw`, `ip`, `i(`, `a"`
* **Buffer, Fenster und Tabs:** Unterschied und Zusammenspiel
* **Register und Makros:** Für effiziente Wiederholungen
* **Suche und Ersetzen:** Mit regulären Ausdrücken

---
