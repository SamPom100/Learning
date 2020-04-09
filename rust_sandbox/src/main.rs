//https://www.youtube.com/watch?v=zF34dRivLOw at 44:44

//Load files
mod print;
mod vars;
mod types;
mod strings;

//Cargo init to set up
//Cargo run to run
fn main() 
{
    println!("Hello, world!");

    print::run();
    print();
    vars::run();
    print();
    types::run();
    print();
    strings::run()
    

}

fn print()
{
    println!("\n /////////////////////////////////////////////// \n\n");

}