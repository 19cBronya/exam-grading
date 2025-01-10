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

- [Storing Lists of Values with Vectors](https://doc.rust-lang.org/stable/book/ch08-01-vectors.html)
- [`iter_mut`](https://doc.rust-lang.org/std/primitive.slice.html#method.iter_mut)
- [`map`](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.map)
1:用数组初始化`vector`
第一种，直接初始化一个空vector之后一个一个往里插:
```
    let mut v = Vec::new();
        
    for i in a{
        v.push(i);
    }

    //或者用下标遍历
    //for i in 0..a.len(){
    //    v.push(a[i]);
    //}
```
第二种，直接用数组a初始化：
虽然hint中提及了`vec![]`的初始化方法，但这只能用于类似`let v = vec![10,20,30,40];`而不能用于已经存在的数组
因此我们要用到用到`Vec::form()`,用`let v = Vec::from(a)`解决

2:迭代器
一共有两种方式来用迭代器遍历：直接访问迭代器和使用`map`方法：
直接访问中，有可变和不可变之分，不可变迭代器只能用来访问，可变的那个可以像指针一样修改
`for element in v.iter_mut() { *element *= 2 ;}`
这种方法本质上还是循环
另外一种方法则是使用了`map`方法：
`v.iter().map(|element| element * 2 ).collect()`
这种方法也可以写成：
```
v.iter().map(|element| {
    element * 2
}).collect()
```
以方便对元素进行更复杂的操作

首先使用`Vec::iter()`方法创建不可变迭代器，之后调用迭代器的`map`方法修改每一项。最后用`collect()`方法接受收集遍历过程中的信息
值的注意的是，我们创建的是*不可变*迭代器，因此我们返回的并不是通过这个迭代器修改后的原`Vec<T>`:`v`而是通过`collect`方法收集遍历过程中产生新元素产生的新的`Vec`