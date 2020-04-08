/*
    Integers: u8, i8, u16, i16 (u is unsigned, I can't be negative)
    Floats: f32, f64
    Boolean: bool
    Character: char
    Tuples (is a list)
    Array

*/
pub fn run(){

    //default is i32
    let _x = 1;

    //default is f64
    let _y: i64 = 4545454545;

    let _z = 22;

    //find max size
    println!("Max i32L {}", std::i32::MAX);
    println!("Max i32L {}", std::i64::MAX);

    //boolean
    let is_active = true;

    //get boolean from expression
    let is_greater: bool = 10 < 5;

    println!("{:?}", (_x, _y, _z, is_active, is_greater));

    let al = 'a';
    let face = '\u{1F600}';

    println!("{} {}", al, face);


}