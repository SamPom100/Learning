pub fn run() {
    let age = 22;
    let check_id = true;
    //or could do
    //  let check_id: bool = true;
    let knows_person_of_age = true;

    //if else
    if age >= 21 && check_id || knows_person_of_age {
        println!("What would you like to drink?");
    } else if age < 21 && check_id {
        println!("Sorry, you have to leave")
    } else {
        println!("I'll need to see your ID")
    }

    //shorthand
    let is_of_age = if age >= 21 { true } else { false };
    println!("Is of Age: {}", is_of_age);
}
