use std::mem;
pub fn run() {
    //vector data type and length
    let mut numbers: Vec<i32> = vec![1, 2, 3, 4, 5];

    //reassign value
    numbers[2] = 20;

    //add on to vector
    numbers.push(6);
    numbers.push(7);

    println!("{:?}", numbers);

    //pop off last value
    numbers.pop();

    //get single value
    println!("Single Value: {}", numbers[0]);

    //get vector length
    println!("Vector length: {}", numbers.len());

    //get memory                        standard library --> memory --> specific function
    //                                     could also be mem::size_of_val() because of the 1st line
    println!("vector memory is {} bytes", std::mem::size_of_val(&numbers));

    println!("vector memory is {} bytes", mem::size_of_val(&numbers));

    //get slice
    let slice: &[i32] = &numbers[0..2];
    println!("Slice: {:?}", slice);

    //loop through values
    let mut _x = 0;
    for x in numbers.iter() {
        println!("{}th position is {}", _x, x);
        _x += 1;
    }

    //loop through and mutate values
    for x in numbers.iter_mut() {
        *x *= 2;
    }

    println!("Numbers Multiplied: {:?}", numbers);
}
