pub fn run() {
    //infinite loop
    let mut count = 0;

    loop {
        count += 1;
        println!("Number: {}", count);

        if count == 20 {
            break;
        }
    }

    count = 0;

    //while loop (fizzbuzz)
    while count <= 100 {
        if count % 15 == 0 {
            println!("FizzBuzz");
        } else if count % 3 == 0 {
            println!("Fizz");
        } else if count % 5 == 0 {
            println!("Buzz")
        } else {
            println!("{}", count);
        }

        count += 1;
    }

    //for range loop
    for x in 0..100 {
        if x % 3 == 0 && x % 5 == 0 {
            println!("FizzBuzz");
        } else if x % 3 == 0 {
            println!("Fizz");
        } else if x % 5 == 0 {
            println!("Buzz")
        } else {
            println!("{}", x);
        }
    }
}
