fn main() {
    // TODO: Create an array called `a` with at least 100 elements in it.
    // let a = ???

    let a:[&str;100] = ["fxxk";100];
    // let a: [i32; 100] = (0..100).collect::<Vec<i32>>().try_into().unwrap();
    
    if a.len() >= 100 {
        println!("Wow, that's a big array!");
    } else {
        println!("Meh, I eat arrays like that for breakfast.");
        panic!("Array not big enough, more elements needed");
    }
}
