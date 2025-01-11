# If

`if`, the most basic (but still surprisingly versatile!) type of control flow, is what you'll learn here.

## Further information

- [Control Flow - if expressions](https://doc.rust-lang.org/book/ch03-05-control-flow.html#if-expressions)

rs的`if`: `if 条件1 {} else {}`,条件不需要括号,`if/else`被视为一个表达式
两个代码块应当返回同样的类型
同时嵌套的`if else`可以[折叠](https://rust-lang.github.io/rust-clippy/master/index.html#suspicious_else_formatting) :
```rust
|       } else {
|  ____________^
| |         if food == "potato"{
| |             "I guess I can eat that."
| |         }else{
| |             "No thanks!"
| |         }
| |     }
| |_____^
|
```
```rust
    else if food == "potato"{
        "I guess I can eat that."
    }else{
        "No thanks!"
    }
```
