//https://www.youtube.com/watch?v=zF34dRivLOw at 1:19:12

//test edit from github.com
//sync using autogit.sh

//Load files
mod arrays;
mod conditionals;
mod functions;
mod loops;
mod print;
mod strings;
mod tuples;
mod types;
mod vars;
mod vectors;

//Cargo init to set up
//Cargo run to run
fn main() {
    println!("Hello, world!");
    println!("Rust Sample Code Output:");

    print::run();
    print();
    vars::run();
    print();
    types::run();
    print();
    strings::run();
    print();
    tuples::run();
    print();
    arrays::run();
    print();
    vectors::run();
    print();
    conditionals::run();
    print();
    loops::run();
    print();
    functions::run();
}

//spacer
fn print() {
    println!("\n /////////////////////////////////////////////// \n\n");
}
