# Variables

In Rust, variables are immutable by default.
When a variable is immutable, once a value is bound to a name, you can’t change that value.
You can make them mutable by adding `mut` in front of the variable name.

## Further information

- [Variables and Mutability](https://doc.rust-lang.org/book/ch03-01-variables-and-mutability.html)

定义变量： `let x = 1;`
定义可变变量，修改可变变量：` let mut x =1 ; x = 2 ;`
变量遮蔽：同一个变量名多次应用，后起名的可以遮蔽之前的
如`let x = 'TREE'`
在之后可以使用`let x = 3`使x成为3（`int`类型）
另外遮蔽可以对`mut`和`immutable`使用
例如`let mut x =3`
是不能直接`x="TREE“`的
但是可以`let x = "TREE"`
qwq