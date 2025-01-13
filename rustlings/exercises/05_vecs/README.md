# Vectors

Vectors are one of the most-used Rust data structures. In other programming
languages, they'd simply be called Arrays, but since Rust operates on a
bit of a lower level, an array in Rust is stored on the stack (meaning it
can't grow or shrink, and the size needs to be known at compile time),
and a Vector is stored in the heap (where these restrictions do not apply).

Vectors are a bit of a later chapter in the book, but we think that they're
useful enough to talk about them a bit earlier. We shall be talking about
the other useful data structure, hash maps, later.

## Further information

- [Storing Lists of Values with Vectors](https://doc.rust-lang.org/book/ch08-01-vectors.html)
- [`iter_mut`](https://doc.rust-lang.org/std/primitive.slice.html#method.iter_mut)
- [`map`](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.map)

好，到了vec了
在`Rust`中创建vec，要不用`Vec::new()`直接构造一个，要不就用`vec![]`来转化，后者需要确定`[]`中的内容
将`array`转化为`Vec`:用`a.to_vec()`或者`Vec::from(a)`
也可以先`let mut v:Vec<i32> = Vec![]`再遍历`a`一个一个往里面插

两种迭代器:可变的`v.iter_mut()`和不可变的`v.iter()`
想要获得一个v中每个元素都` * 2 `的新`vec`,要不用可变迭代器直接在原地修改,
要不就要用不可变迭代器配合.map()方法修改后用.colect()收集
[std::iter](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.map)

闭包:rust的lambda,从环境中捕获参数,格式为
```rust
let expensive_closure = |num1,num2...| {
        println!("calculating slowly...");//操作/函数体
        num1+num2// 返回值
    };
```

闭包并不一定要标注返回值类型,会自己推断的,如果想要规定返回值类型,格式如下:
```rust
let expensive_closure = |num: u32| -> u32 {
        println!("calculating slowly...");//操作/函数体
        num1+num2// 返回值
    };
```
即使并不是闭包的参数,闭包也可以捕获他作用域的值:
```rust
fn main() {
    let x = 4;

    let equal_to_x = |z| z == x;

    equal_to_x(4);
}
```