fn main(){
    // for convention
    // - using lowercase
    // - using snakecase
    let full_name = "ridho";
    println!("hello {}", full_name);
    
    
    // MUTABLE variable 
    // by default variable on rust is immutable.
    // to changed into mutable type, you must put mutable identifier "mut" front of identifier
    let mut programming_language = "Reason";
    println!("i love {}", programming_language);
    
    programming_language = "Rust";
    println!("but i love to {}", programming_language);
    
    // ASSIGNING MULTIPLE VARIABLES 
    let (fruit, total) = ("apple", 23);
    println!("there is {} {}", total, fruit );
}