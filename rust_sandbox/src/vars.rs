pub fn run(){

    let name = "Brad";

    //Make variable mutable
    let mut age = 37;

    println!("My name is {} and I am {}", name, age);

    age = 38;

    println!("Now {} is {} years old", name, age);




    //Define constant
    const ID: i32 = 001;
    println!("ID: {}", ID);


    //Assign multiple variables at once
    let(my_name, my_age) = ("Brad", 37);
    println!("{} is {}", my_name, my_age);
}