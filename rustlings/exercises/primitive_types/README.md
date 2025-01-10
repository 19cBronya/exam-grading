# Primitive Types

Rust has a couple of basic types that are directly implemented into the
compiler. In this section, we'll go through the most important ones.

## Further information

- [Data Types](https://doc.rust-lang.org/stable/book/ch03-02-data-types.html)
- [The Slice Type](https://doc.rust-lang.org/stable/book/ch04-03-slices.html)

这章主要介绍原始数据类型(Primitive Types)的基本用法

1和2写的有点无厘头
1：如`morning=True`则`Good morning`,如`Evening=True`则`Good evening`
那么`let Evening = True`即可正常`Good evening`

2：更变态了，'C'这样的单字符有一些判断类型的函数，通过调用判断是什么类型然后输出即可
这里只要让`自己喜欢的字符` 是一个单字符就能过，别的无所谓

3:创建数组，需要注意的是不能使用可变变量作为长度
`let a = [1,2,3,4,5];`或`let a:[i32;5]=[1,2,3,4,5]`
可以在创建时初始化：使用`let a = [0,5]`来填充5个0
另外这玩意的长度是不变的，也就是说开始写了多长就是多长，和旧版C的数组一样
形如
```
    let mut a:[i32;5]=[1,2,3,4,5];
    a = [3;6];
```
不被支持，因为`expected an array with a fixed size of 5 elements, found one with 6 elements`
好科学的语法啊
4:取`a[1]`到`a[len-1]`：`&a[1..len]`

5：第一种访问元组的方法：用对应的变量提取对应值`let (name,age) = cat //cat = ("CAT_NAME",CAT_AGE)`
这样可以直接用name和age访问到cat的值,但不能修改

6：第二种访问方法：直接用`（1，2，3，……）.INDEX`获取值，例如`(1,2,3,4,5).0=1`
也可以直接修改，比如先`let mut a = (1,2,3)`再`a.0=4`,则`a`的值变为`(4,2,3)`
特别的，因为a的数据类型是 (i32,i32,i32)，因此不能在不加`mut`的情况下通过`let a.0 = 4`来更新单项的值三