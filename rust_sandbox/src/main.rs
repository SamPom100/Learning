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
    println!("\n /////////////////////////////////////////////// \n\n");
    vars::run();
    println!("\n /////////////////////////////////////////////// \n\n");
    types::run()
    

}
