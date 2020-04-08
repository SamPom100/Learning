pub fn run(){
    //print to console
    println!("Hello from the print.rs file");

    //print an integer
    println!("Number: {}", 1);

    //Basic formatting
    println!("{} is from {}", "Brad", "Illinois");

    //Positional arguements
    println!("{0} is from {1} and {0} likes to {2}", "Brad", "IL", "code");
        //{0} gives you the word in position 0 after the comma

    //Named arguements
    println!("{name} likes to play {activity}", name = "John", activity = "baseball");

    //Placeholder traits, converts variables to binary, hex, octal, etc
    println!("Binary: {:b} Hex: {:x} Octal: {:o}", 10, 10, 10);

    //Placeholder for debut trait, can do multiple values
    println!("{:?}", (12, true, "helloooo"));


    //Basic math
    println!("10+10 = {}", 10+10);
    
}