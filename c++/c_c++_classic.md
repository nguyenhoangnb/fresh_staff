# Tổng quan nhanh — C / C++ cơ bản

## 1. Khai báo, thêm thư viện
- C: `#include <stdio.h>`, `#include <stdlib.h>`
- C++: `#include <iostream>`, `#include <vector>`, `#include <stack>`, `#include <queue>`
- Dùng cho file người dùng tự tạo: `#include "name_lib.h"`
- Ví dụ:
```c++
    #include <iostream>
    #include "ros/ros.h"
    using namespace std;
```

## 2. Kiểu dữ liệu

Bảng dưới đây theo kiến trúc phổ biến (LP64: Linux x86_64). Kích thước và phạm vi có thể thay đổi tùy nền tảng và compiler — luôn kiểm tra với `sizeof()` và `<limits>`.

### 2.1. Kiểu dữ liệu cơ bản (thông dụng)

| Kiểu        | Kích thước (bytes) | Phạm vi (thường gặp)                         | Ghi chú                          |
|-------------|---------------------:|----------------------------------------------|----------------------------------|
| bool        | 1                    | true / false                                 | Dùng cho logic                   |
| char        | 1                    | -128 … 127 (signed) / 0 … 255 (unsigned)     | ký tự, byte nhỏ                  |
| short       | 2                    | -32,768 … 32,767                             | số nguyên ngắn                   |
| int         | 4                    | -2,147,483,648 … 2,147,483,647               | số nguyên tiêu chuẩn              |
| long        | 8                    | -9.22e18 … 9.22e18 (LP64)                    | trên Windows 64-bit thường 4B    |
| long long   | 8                    | -9.22e18 … 9.22e18                           | chuẩn C++11                      |
| float       | 4                    | ~6-9 chữ số thập phân                         | dấu phẩy động đơn                |
| double      | 8                    | ~15-17 chữ số thập phân                       | dấu phẩy động kép                |
| long double | 16 (thường)          | chính xác hơn double (tùy compiler)          | có thể 12/16/8 tùy nền tảng      |
| void        | 0 (không lưu trữ)    | —                                            | dùng cho hàm không trả về       |
| size_t      | 8 (LP64)             | 0 … 2^64-1                                   | kích thước/độ dài, unsigned     |
| ptrdiff_t   | 8 (LP64)             | -                                           | kiểu kết quả phép trừ con trỏ   |
| con trỏ     | 8 (LP64)             | —                                            | kích thước pointer phụ thuộc nền |

### 2.2 Kiểu có độ dài xác định (C++11 / C99 — <cstdint> / <stdint.h>)

| Kiểu      | Độ dài (bit) | Có dấu? |
|-----------|--------------:|:-------:|
| int8_t    | 8             | Có      |
| uint8_t   | 8             | Không   |
| int16_t   | 16            | Có      |
| uint16_t  | 16            | Không   |
| int32_t   | 32            | Có      |
| uint32_t  | 32            | Không   |
| int64_t   | 64            | Có      |
| uint64_t  | 64            | Không   |

Dùng các kiểu này khi cần kích thước cố định (lưu file nhị phân, giao thức mạng, cross-platform).


### 2.3. Ví dụ nhanh (C++) — kiểm tra kích thước và giới hạn
```cpp
#include <iostream>
#include <cstdint>
#include <limits>

int main() {
    std::cout << "sizeof(int) = " << sizeof(int) << " bytes\n";
    std::cout << "sizeof(long) = " << sizeof(long) << " bytes\n";
    std::cout << "int32_t min = " << std::numeric_limits<int32_t>::min()
              << ", max = " << std::numeric_limits<int32_t>::max() << "\n";
    std::cout << "float epsilon = " << std::numeric_limits<float>::epsilon() << "\n";
    return 0;
}
```

## 3. Mảng 1 chiều / 2 chiều
- Mảng tĩnh:
    int a[10];
- Mảng 2D:
    int mat[3][4];
- Truy cập: `a[i]`, `mat[i][j]`
- Với kích thước động dùng con trỏ hoặc `std::vector`.

## 4. Struct (cấu trúc dữ liệu)
- Dùng để gom nhóm các trường:
```c++
    struct Student {
        char name[50];
        int id;
        float gpa;
    };
```
- Trong C++ có thể có hàm thành viên.

## 5. Cấu trúc điều khiển — Ví dụ

- If / else:
```c++
int x = -5;
if (x > 0) {
    std::cout << "Số dương\n";
} else if (x == 0) {
    std::cout << "Bằng 0\n";
} else {
    std::cout << "Số âm\n";
}
```

- For:
```c++
for (int i = 0; i < 5; ++i) {
    std::cout << "i = " << i << '\n';
}
```

- While:
```c++
int n = 3;
while (n > 0) {
    std::cout << "Đếm: " << n << '\n';
    --n;
}
```

- Switch:
```c++
int choice = 2;
switch (choice) {
    case 1:
        std::cout << "Bạn chọn 1\n";
        break;
    case 2:
        std::cout << "Bạn chọn 2\n";
        break;
    default:
        std::cout << "Lựa chọn không hợp lệ\n";
}
```

## 6. Hàm (function) — khai báo và sử dụng (mở rộng)

### Khái niệm
Hàm là khối lệnh có tên, dùng để thực hiện một công việc cụ thể. Hàm giúp tách mã, tái sử dụng và kiểm soát phạm vi.

### Cấu trúc cơ bản
```
kiểu_trả_về tên_hàm(danh_sách_tham_số) {
    // khối lệnh
    return giá_trị;  // (tùy chọn – nếu có giá trị trả về)
}
```

Ví dụ C++:
```cpp
int add(int a, int b) {
    return a + b;
}
```

### Hàm không trả giá trị (void)
```c
void printHello() {
    printf("Hello\n");
}
```

### Khai báo trước (prototype) và định nghĩa sau
Khi chương trình dài, có thể khai báo prototype ở đầu file hoặc header, và định nghĩa sau `main()`:
```c
// utils.h
int add(int a, int b);

// main.c
#include "utils.h"
int main() { /* ... */ }

// utils.c
int add(int a, int b) { return a + b; }
```

### Truyền tham trị vs truyền tham chiếu
- Tham trị (by value): truyền bản sao, không thay đổi biến gốc.
  ```cpp
  void f(int x) { x = 0; } // caller không bị ảnh hưởng
  ```
- Tham chiếu (by reference / pointer): truyền trực tiếp, có thể thay đổi biến gốc.
  ```cpp
  void inc(int &x) { ++x; }      // C++
  void inc_ptr(int *p) { ++*p; } // C
  ```
- Tham chiếu hằng (const &): truyền tham chiếu để tránh copy nhưng không cho thay đổi.
  ```cpp
  void print(const std::string &s) { std::cout << s; }
  ```

### Lưu ý khi trả về
- Tránh trả về tham chiếu hoặc con trỏ tới biến local (sẽ dẫn tới UB).
- Có thể trả về by value, hoặc trả về smart pointer / object.



### Ví dụ tổng hợp (C++)
```cpp
#include <iostream>
#include <string>

// prototype
int sum(int a, int b);

int main() {
    int x = 3;
    int y = 4;
    std::cout << "sum = " << sum(x, y) << '\n';

    // truyền tham chiếu
    auto inc = [](int &v){ ++v; };
    inc(x);
    std::cout << "x after inc = " << x << '\n';

    // const reference
    std::string s = "Hello";
    auto print = [](const std::string &t){ std::cout << t << '\n'; };
    print(s);

    // function pointer
    int (*fptr)(int,int) = sum;
    std::cout << "via fptr = " << fptr(5,6) << '\n';
    return 0;
}

int sum(int a, int b) {
    return a + b;
}
```

### Gợi ý ngắn
- Tách prototype vào header, định nghĩa vào .c/.cpp.  
- Dùng `const &` cho tham số lớn để tránh copy.  
- Tránh trả về con trỏ/tham chiếu tới biến cục bộ.  
- Trong C++ hiện đại ưu tiên `constexpr`, lambda, và smart pointers.
  
## 7. Lập trình hướng đối tượng (C++)

- Khái niệm:
  - Class: khuôn mẫu để tạo object (instance).
  - Constructor: hàm đặc biệt khởi tạo object.
  - Attribute: biến thành viên mô tả trạng thái object.
  - Method: hàm thành viên mô tả hành vi object.
  - Kế thừa: lớp con thừa hưởng thuộc tính/phương thức từ lớp cha.

- Access specifiers:
  - `public` — truy cập từ bên ngoài.
  - `protected` — truy cập trong class và lớp dẫn xuất.
  - `private` — chỉ truy cập trong class.

- Constructor / initializer list:
  - Dùng initializer list để khởi tạo attribute hiệu quả: `Class(): a(v) {}`

- Tính đóng gói (encapsulation):
  - Giữ attribute ở `private` và cung cấp getter/setter `public`.

- Kế thừa và đa hình:
  - Dùng `virtual` cho method để hỗ trợ override và gọi đúng method khi dùng con trỏ/truyền tham chiếu tới base.
  - Có thể dùng destructor `virtual` trong base để giải phóng đúng khi delete qua con trỏ base.

Ví dụ minh họa:
```cpp
#include <iostream>
#include <string>

class Person {
public:
    std::string name;                 // attribute (public để ví dụ)
    Person(const std::string &n) : name(n) {}   // constructor
    virtual void greet() const {      // method có thể override
        std::cout << "Hi, " << name << "\n";
    }
    virtual ~Person() = default;      // virtual destructor
};

class Student : public Person {       // kế thừa public
    int id;                           // default private
public:
    Student(const std::string &n, int i) : Person(n), id(i) {} // ctor
    void greet() const override {     // override method
        std::cout << "Student " << name << " (ID: " << id << ") says hi\n";
    }
    int get_id() const { return id; } // method truy xuất attribute
};

int main() {
    Person p("Hoang");
    Student s("Minh", 123);

    p.greet();    // Person::greet
    s.greet();    // Student::greet

    // Polymorphism
    Person *ptr = &s;
    ptr->greet(); // gọi Student::greet vì greet là virtual

    return 0;
}
```

Gợi ý ngắn:
- Để ẩn trạng thái, đặt attribute là `private` và cung cấp getter/setter.  
- Dùng `override` để tránh lỗi khi ghi đè method.  
- Dùng `virtual` destructor cho lớp base nếu sẽ xóa object qua con trỏ base.
  
## 8. Bản chất con trỏ
- Con trỏ lưu địa chỉ bộ nhớ của biến.
- Khai báo: `int *p;`
- Truy cập/giá trị: `*p`
- Lấy địa chỉ: `&x`
- Quan trọng: quản lý bộ nhớ khi dùng `new`/`delete` (C++) hoặc `malloc`/`free` (C).

## 9. Các kiểu con trỏ
- Con trỏ thông thường: `int *p;`
- Con trỏ hàm: `int (*f)(int, int);` — lưu địa chỉ hàm
- Con trỏ đối tượng (C++): con trỏ tới instance `Person *p = new Person(...);`
- Con trỏ thành viên: `int Person::*ptr = &Person::age;` (C++)

## 10. Mảng động & cấu trúc STL (C++)

- Tổng quan
  - Thay vì quản lý mảng động bằng con trỏ và new/delete, dùng STL container để an toàn, rõ ràng và hiệu quả.
  - Một số container phổ biến: `std::vector`, `std::deque`, `std::list`, `std::stack`, `std::queue`, `std::priority_queue`.

- std::vector<T> — mảng động
  - Thay đổi kích thước linh hoạt, dữ liệu liên tiếp trên bộ nhớ (cache-friendly).
  - Hàm thường dùng: `push_back`, `pop_back`, `size`, `capacity`, `reserve`, `clear`, `insert`, `erase`, `emplace_back`.
  - Sử dụng `reserve(n)` khi biết trước kích thước để tránh reallocation.

Ví dụ:
```cpp
#include <vector>
#include <iostream>

int main() {
    std::vector<int> v;
    v.reserve(10);          // tránh reallocate nhiều lần
    v.push_back(1);
    v.push_back(2);
    v.emplace_back(3);      // trực tiếp tạo phần tử
    for (int x : v) std::cout << x << ' ';
    std::cout << "\nsize=" << v.size() << " capacity=" << v.capacity() << '\n';
    v.pop_back();
    return 0;
}
```

- std::deque<T> — double-ended queue
  - Thêm/xóa ở cả hai đầu hiệu quả, truy cập ngẫu nhiên được (không liên tục hoàn toàn như vector).

- std::list<T> — danh sách liên kết kép
  - Thích hợp khi cần chèn/xóa ở giữa thường xuyên; không hỗ trợ truy cập ngẫu nhiên O(1).

- std::stack<T>, std::queue<T>, std::priority_queue<T>
  - Adapter container; mặc định dùng `std::deque` hoặc `std::vector` bên trong.
  - API:
    - stack: `push`, `pop`, `top`, `empty`, `size`
    - queue: `push`, `pop`, `front`, `back`
    - priority_queue: `top`, `push`, `pop`

Ví dụ stack/queue:
```cpp
#include <stack>
#include <queue>
#include <iostream>

int main() {
    std::stack<int> s;
    s.push(10);
    s.push(20);
    std::cout << "stack top=" << s.top() << '\n';
    s.pop();

    std::queue<int> q;
    q.push(1);
    q.push(2);
    std::cout << "queue front=" << q.front() << '\n';
    q.pop();
    return 0;
}
```

- Khi nào dùng gì
  - Dùng `std::vector` hầu hết trường hợp nếu cần mảng động và truy cập theo chỉ số.
  - Dùng `std::deque` nếu cần thêm/xóa thường xuyên cả hai đầu.
  - Dùng `std::list` nếu cần chèn/xóa ở giữa bằng iterator mà không quan tâm hiệu năng truy cập ngẫu nhiên.
  - Dùng `std::stack`/`std::queue` khi cần semantics ngăn xếp/hàng đợi.

- Hiệu năng & best practices
  - Dùng `reserve` để giảm reallocation.
  - Truy cập phần tử vector bằng `operator[]` (không kiểm tra) hoặc `at()` (có kiểm tra).
  - Tránh copy lớn: truyền `const &` khi cần.
  - Với tài nguyên động, dùng RAII và smart pointers (`std::unique_ptr`, `std::shared_ptr`) thay vì new/delete trực tiếp.

- Ví dụ sử dụng vector với smart pointers
```cpp
#include <vector>
#include <memory>

struct Obj { int id; };

int main() {
    std::vector<std::unique_ptr<Obj>> objs;
    objs.emplace_back(std::make_unique<Obj>(Obj{1}));
    objs.emplace_back(std::make_unique<Obj>(Obj{2}));
    // ownership rõ ràng, không cần delete
    return 0;
}
```

Gợi ý ngắn:
- Ưu tiên `std::vector` cho mảng động.  
- Dùng container STL thay vì quản lý bộ nhớ thủ công.  
- Dùng smart pointers và RAII để tránh rò rỉ bộ nhớ.