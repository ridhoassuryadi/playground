/// Definite loops
/// is Loops in which the number of iterations is known at compile time.
fn main() {
    let start = 1;
    let end = 3;
    
    for i in start..end {
        println!("{}", i);
    }
    
    for (count, variable) in (7..10).enumerate(){
        if count * 2 == 4 {
            println!("count: {} - variable: {}", count, variable);  
        }
    }
}