fn main() {
    let mut var = 1;
    let mut is_found = false;
    
    while !is_found {
        var += 1;
        
        if var == 3 {
            is_found = true
        }
        
        println!("var = {} and is_found = {}", var, is_found);
    }

    /**
    * loop {
        println!("i am infinite")
    }
    **/
}