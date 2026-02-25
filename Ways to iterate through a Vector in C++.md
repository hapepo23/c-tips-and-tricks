# Ways to iterate through a `std::vector` in C++

---

## 1. Range-based for loop ✅ (modern & recommended)

```cpp
std::vector<int> v = {1, 2, 3, 4, 5};

for (int x : v) {
    std::cout << x << "\n";
}
```

### Modify elements:

```cpp
for (int &x : v) {
    x *= 2;
}
```

### Read-only (best practice):

```cpp
for (const int &x : v) {
    std::cout << x << "\n";
}
```

✔ Clean
✔ Safe
✔ Most idiomatic modern C++

---

## 2. Index-based loop

```cpp
for (size_t i = 0; i < v.size(); i++) {
    std::cout << v[i] << "\n";
}
```

✔ Needed if you require the index
⚠ More error-prone (bounds, signed/unsigned issues)

---

## 3. Iterator-based loop (classic STL style)

```cpp
for (auto it = v.begin(); it != v.end(); ++it) {
    std::cout << *it << "\n";
}
```

### Const iterators:

```cpp
for (auto it = v.cbegin(); it != v.cend(); ++it) {
    std::cout << *it << "\n";
}
```

✔ Required for some STL algorithms
✔ Shows STL fundamentals

---

## 4. Reverse iteration

### Range-based:

```cpp
for (int x : std::views::reverse(v)) {
    std::cout << x << "\n";
}
```

*(C++20)*

### Reverse iterators:

```cpp
for (auto it = v.rbegin(); it != v.rend(); ++it) {
    std::cout << *it << "\n";
}
```

---

## 5. STL algorithms (`std::for_each`)

```cpp
std::for_each(v.begin(), v.end(), [](int x) {
    std::cout << x << "\n";
});
```

✔ Functional style
✔ Works well with lambdas

---

## 6. C++20 Ranges (very modern & powerful)

```cpp
#include <ranges>

for (int x : v | std::views::filter([](int x){ return x % 2 == 0; })) {
    std::cout << x << "\n";
}
```

Filter + iterate in one clean pipeline.

---

## Best Practice Summary

| Scenario                     | Best Choice               |
| ---------------------------- | ------------------------- |
| Just reading                 | `for (const auto& x : v)` |
| Modifying                    | `for (auto& x : v)`       |
| Need index                   | index-based loop          |
| Functional style             | `std::for_each`           |
| Transform / filter pipelines | C++20 ranges              |

---

