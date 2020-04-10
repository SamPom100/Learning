use std::mem;
pub fn run() {
    //array data type and length
    let mut numbers: [i32; 5] = [1, 2, 3, 4, 5];

    //reassign value
    numbers[2] = 20;

    println!("{:?}", numbers);

    //get single value
    println!("Single Value: {}", numbers[0]);

    //get array length
    println!("Array length: {}", numbers.len());

    //get memory                        standard library --> memory --> specific function
    //                                     could also be mem::size_of_val() because of the 1st line
    println!("Array memory is {} bytes", std::mem::size_of_val(&numbers));

    println!("Array memory is {} bytes", mem::size_of_val(&numbers));

    //get slice
    let slice: &[i32] = &numbers[0..2];
    println!("Slice: {:?}", slice);
}
