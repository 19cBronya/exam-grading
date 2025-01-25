# Move Semantics

These exercises are adapted from [pnkfelix](https://github.com/pnkfelix)'s [Rust Tutorial](https://pnkfelix.github.io/rust-examples-icfp2014/) -- Thank you Felix!!!

## Further information

For this section, the book links are especially important.

- [Ownership](https://doc.rust-lang.org/book/ch04-01-what-is-ownership.html)
- [Reference and borrowing](https://doc.rust-lang.org/book/ch04-02-references-and-borrowing.html)

移动语义 - 所有权和引用与借用

区别堆和栈：此处亦可参见csapp
堆上的内存可以通过malloc和free进行扩张和释放，但是栈需要在编译期就确定大小

所有权三条规则：
Rust 中的每一个值都有一个被称为其 所有者（owner）的变量。
值在任一时刻有且只有一个所有者。
当所有者（变量）离开作用域，这个值将被丢弃。

有关作用域：变量从进入作用域开始是有效的，一直持续到离开作用域位置
可以(?)用大括号的方式来确定作用域：作用域就是变量定义的那一层大括号
> 需要注意的是这也存在特例，例如闭包会捕捉范围之外的变量，因此还要考虑他捕捉外部变量的情况来确定作用域

类似于cpp的析构函数`~A`，rust里面的`A::drop`也会在对象离开作用域的时候被自动调用

对于赋值：对于整体都存在栈上的类型(实现了`Copy trait`的类型)进行拷贝，对于存在对堆上元素进行操作的类型(如String)进行移动(move)，想要拷贝这样的元素，请使用`clone()`方法来操作堆上的内存
也就是说，rust在赋值时自行决定了使用move还是拷贝，如果你想进行拷贝，需要使用`clone()`方法，例如`let s2 = s1.clone()`

函数的传参和返回值都会造成所有权的移动，对于只想在函数中使用一个值而不获取其所有权的情况，我们需要使用`引用`来简化这种操作，以避免多次传入传出这个值
