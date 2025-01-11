# Variables

In Rust, variables are immutable by default.
When a variable is immutable, once a value is bound to a name, you can’t change that value.
You can make them mutable by adding `mut` in front of the variable name.

## Further information

- [Variables and Mutability](https://doc.rust-lang.org/book/ch03-01-variables-and-mutability.html)

用`let`声明变量 `let x =5`
用`:i32`来声明变量类型 `let x:i32 =5`
用`mut`来使得变量可变 `let mut x =3; x=2;`
用`const`来声明常量,常量不可变,常量必须声明类型 `const x:i32 = 3`

遮蔽(shadow)用于让一个新的值覆盖一个旧的值,甚至允许不同类型的遮蔽,甚至允许声明过的不同类型,例如:
```rust
fn main() {
    let number:&str = "T-H-R-E-E"; // Don't change this line
    println!("Spell a number: {}", number);

    // TODO: Fix the compiler error by changing the line below without renaming the variable.
    let number:i32 = 3;
    println!("Number plus two is: {}", number + 2);
}
```