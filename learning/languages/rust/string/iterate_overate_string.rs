fn main() {
    // define a String object
    let str = String::from("Educative, course on, Rust; Programming");  
    // split on token
    for token in str.split(";") {
        println!("{}", token);
    }
}