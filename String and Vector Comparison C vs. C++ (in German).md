# Vergleichstabelle der String-Operationen in C vs. in C++

Hier eine Übersicht der wichtigsten String-Operationen:

| Operation | C (`char[]`) | C++ (`std::string`) |
|---|---|---|
| Erstellen | `char s[] = "Hi";` | `std::string s = "Hi";` |
| Länge | `strlen(s)` | `s.size()` / `s.length()` |
| Kopieren | `strcpy(dst, src)` | `dst = src` |
| Anhängen | `strcat(s, "!")` | `s += "!"` |
| Vergleichen | `strcmp(s1, s2)` | `s1 == s2` |
| Teilstring | `strncpy(dst, s+1, n)` | `s.substr(1, n)` |
| Zeichen finden | `strchr(s, 'a')` | `s.find('a')` |
| String finden | `strstr(s, "ab")` | `s.find("ab")` |
| Länge ändern | manuell / `realloc` | `s.resize(n)` |
| Löschen | – | `s.erase(pos, n)` |
| Einfügen | – | `s.insert(pos, "x")` |
| Ersetzen | – | `s.replace(pos, n, "x")` |
| Zu int | `atoi(s)` / `strtol` | `std::stoi(s)` |
| Von int | `sprintf(s, "%d", n)` | `std::to_string(n)` |

-----

# Vergleichstabelle der Array- bzw Vector-Operationen in C vs. in C++

Hier eine Übersicht der wichtigsten Array/Vector-Operationen:

| Operation | C (`int[]`) | C++ (`std::vector`) |
|---|---|---|
| Erstellen | `int a[] = {1,2,3};` | `std::vector<int> v = {1,2,3};` |
| Größe | `sizeof(a)/sizeof(a[0])` | `v.size()` |
| Zugriff | `a[i]` | `v[i]` oder `v.at(i)` |
| Erstes Element | `a[0]` | `v.front()` |
| Letztes Element | `a[n-1]` | `v.back()` |
| Anhängen | – (feste Größe) | `v.push_back(x)` |
| Einfügen | – | `v.insert(pos, x)` |
| Letztes löschen | – | `v.pop_back()` |
| Element löschen | – | `v.erase(pos)` |
| Leeren | – | `v.clear()` |
| Leer? | – | `v.empty()` |
| Größe ändern | `realloc` (manuell) | `v.resize(n)` |
| Kapazität reservieren | `malloc` (manuell) | `v.reserve(n)` |
| Sortieren | `qsort(a, n, sizeof(int), cmp)` | `std::sort(v.begin(), v.end())` |
| Suchen | manuell / `bsearch` | `std::find(v.begin(), v.end(), x)` |
| Kopieren | `memcpy(dst, src, n*sizeof(int))` | `dst = src` |
| Iteration | `for (int i=0; i<n; i++)` | `for (auto x : v)` |
| Dynamisch anlegen | `malloc` / `free` | automatisch |

-----

# Vergleich von 2D-Arrays in C vs in C++:

| Operation | C (`int[][]`) | C++ (`vector<vector<int>>`) |
|---|---|---|
| Erstellen (statisch) | `int a[3][4];` | `std::vector<vector<int>> v(3, vector<int>(4));` |
| Erstellen mit Werten | `int a[3][4] = {{1,2},{3,4}};` | `v = {{1,2},{3,4}};` |
| Zugriff | `a[i][j]` | `v[i][j]` oder `v.at(i).at(j)` |
| Zeilenzahl | `sizeof(a)/sizeof(a[0])` | `v.size()` |
| Spaltenzahl | `sizeof(a[0])/sizeof(a[0][0])` | `v[0].size()` |
| Zeile anhängen | – | `v.push_back({1,2,3})` |
| Zeile löschen | – | `v.erase(v.begin() + i)` |
| Größe ändern | – | `v.resize(n)` |
| Iteration | `for(i) for(j) a[i][j]` | `for(auto& row : v) for(auto x : row)` |
| Dynamisch | `malloc` / `free` (manuell) | automatisch |

**Alternativen in C++:**

**Flaches 1D-Array** (bessere Performance, zusammenhängender Speicher):
```cpp
std::vector<int> a(rows * cols);
a[i * cols + j] = 42; // Zugriff auf [i][j]
```

**`std::array`** (statische Größe, stack-alloziert):
```cpp
std::array<std::array<int, 4>, 3> a;
a[i][j] = 42;
```

-----
