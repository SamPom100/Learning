//primitive string = immutable fixed length
//String = growable, heap allocated data structure

pub fn run(){

    let mut hello = String::from("Hello");

    let mut _hello2 = "Hello";

    //get length
    println!("Length: {}", hello.len());

    //push on a char to hello
    hello.push(' ');
    hello.push('W');

    //push on a string to hello
    hello.push_str("orld");

    println!("Capacity: {}", hello.capacity());

    println!("is empty: {}", hello.is_empty());

    println!("Contains word?: {}", hello.contains("World"));

    println!("Replace: {}", hello.replace("World", "There"));

    println!("{}", hello);


    //loop through string
    for word in hello.split_whitespace(){

        println!("{}", word);
    }

    //create string with capacity
    let mut s = String::with_capacity(10);
    s.push('a');
    s.push('b');

    println!("{}", s);


    //Assertion testing, only shows error if comparison fails
    assert_eq!(2, s.len());

    assert_eq!(10, s.capacity());



}