
fn main(){
    // global scope
    let outer_variable = "apple";
    {
        let inner_variable = "tea";
        println!("block variable {}", inner_variable);
        
        // Shadowing
        let outer_variable = "pineapple";
        println!("block outer variable {}", outer_variable);
    }
    println!("outer variable {}", outer_variable)
}