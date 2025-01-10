# If

`if`, the most basic (but still surprisingly versatile!) type of control flow, is what you'll learn here.

## Further information

- [Control Flow - if expressions](https://doc.rust-lang.org/book/ch03-05-control-flow.html#if-expressions)

rust if:
    `if`: `if CONDITION {} else {}`

`if a>b {a} else {b}`in `rust` `=` `a>b?a:b` in `c++`

if2.rs中：
对于三层if，不止可以写if else if…：
```rust
    if fizzish == "fizz" {
        "foo"
    }else if fizzish == "fuzz"{
        "bar"
    } 
    else {
        "baz"
    }

}
```
也可以用`match`：

```rust
    match fizzish{
        ""=>"foo",
        ""=>"bar",
        _=>""
    }
```

另外，很多题解在if2给`test3`:`"literally anything"), "baz"`也设计了一层`else if`
考虑到实际意义，认为应该将这部分写进最后的`else`


rs3中，每个if和else if块内的let identifier = ...都是在创建一个新的、只在该块内有效的identifier变量，而不是修改外部的identifier变量。
因此下面的写法是不正确的，如果正确那么就支持动态类型了，显然rust不支持
```
    let identifier=1;

    if animal == "crab" {
        let identifier = 1;
    } else if animal == "gopher" {
        let identifier = 2;
    } else if animal == "snake" {
        let identifier = 3;
    } else {
        // 0
        let identifier = "Unknown";
    };
```

如果实在想这么干，还是要把`identifier`换成`mut`
```
    let mut identifier;

    if animal == "crab" {
        identifier = 1;
    } else if animal == "gopher" {
        identifier = 2;
    } else if animal == "snake" {
        identifier = 3;
    } else {
        identifier = 0;
    }
```

所以还是老实用原来的框架算了