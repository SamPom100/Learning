//https://www.youtube.com/watch?v=zF34dRivLOw at 25:29

//Load files
mod print;
mod vars;
mod types;

//Cargo init to set up
//Cargo run to run
fn main() 
{
    println!("Hello, world!");

    print::run();
    print();
    vars::run();
    print();
    types::run()
    

}

fn print()
{
    println!("\n /////////////////////////////////////////////// \n\n");

}