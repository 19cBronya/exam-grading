# Intro

Rust uses the `print!` and `println!` macros to print text to the console.

## Further information

- [Hello World](https://doc.rust-lang.org/rust-by-example/hello.html)
- [Formatted print](https://doc.rust-lang.org/rust-by-example/hello/print.html)

## mine
用`print! println!`来输出

## 记一些做题/读书过程中不知道什么时候会系统学到的东西吧
- `.iter().enumerate()`这个方法将迭代器包装成新的迭代器，返回一个有索引的元组的迭代器，第一个元素是索引（从 0 开始的整数），第二个元素是原迭代器产生的值。用`for (i, &item) in bytes.iter().enumerate() {`这样的形式来遍历

## 区别String 和 $str:
- 前者是特殊的数据结构(类型)，后者是一个指向二进制程序特定位置的 slice，这也就是为什么字符串字面量是不可变的：&str 是一个不可变引用
