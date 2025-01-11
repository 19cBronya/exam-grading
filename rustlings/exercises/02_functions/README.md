# Functions

Here, you'll learn how to write functions and how the Rust compiler can help you debug errors even
in more complex code.

## Further information

- [How Functions Work](https://doc.rust-lang.org/book/ch03-03-how-functions-work.html)

- 声明函数
用`fn`声明函数,格式为 `fn 函数名 (参数) {函数体}`
rust的函数可以被定义在任何位置:main前,main后都可以`fn call_me(){}`

声明参数的时候要声明参数类型：`fn printf(x:i23){println!(x)}`

- 返回值
声明返回值类型： `->` rust并不一定要写明`return`,如果函数体内只有一个值,那么这就是返回值
搭配类似三目运算符的`if else`使用方法可以简化使用
> 见`functions5` 这种时候直接写出这个值,不要再带`;`了
```rust
fn sale_price(price: i64) -> i64 {
    if is_even(price) {
        price - 10
    } else {
        price - 3
    }
}
```


