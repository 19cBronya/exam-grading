# Primitive Types

Rust has a couple of basic types that are directly implemented into the
compiler. In this section, we'll go through the most important ones.

## Further information

- [Data Types](https://doc.rust-lang.org/book/ch03-02-data-types.html)
- [The Slice Type](https://doc.rust-lang.org/book/ch04-03-slices.html)

## 基本数据类型

- bool 
`true` `false` 经典取反`!`


- 数组
`let a = ["fxxk";100];` 表示一个有100个`"fxxk"`元素的数组
声明数组变量类型:`let a:[&str;100] = ["fxxk";100];`
> 也可以用(0..100) 创建一个 Range 类型的迭代器，它可以用来按顺序生成从 0 到 99 的整数序列,但是他本身并不是一个数组,而是一个`Range<{integer}>`
用`let a: [i32; 100] = (0..100).collect::<Vec<i32>>().try_into().unwrap();`将其转为一个数组

数组的切片: `&a[1..3]`表示数组`a`从`a[1]`到`a[2]`不包括`a[3]`的一个切片 (见primitive_types4.rs的例子)


- [元组](https://rustwiki.org/zh-CN/book/ch03-02-data-types.html#%E5%85%83%E7%BB%84%E7%B1%BB%E5%9E%8B)
元组可以把多个不同类型的变量整合到一起`let tup: (i32, f64, u8) = (500, 6.4, 1);`
也可以把一个元组中的不同元素提取成不同的变量,称之为解构
从元组中直接读取数据时,下标同数组从0开始,用`.`来访问:` x.0 `、` x.1 `、` x.2 `...
```rust
    let cat = ("Furry McFurson", 3.5);
    let (name,age) = cat;
    println!("{name} is {age} years old");
```
