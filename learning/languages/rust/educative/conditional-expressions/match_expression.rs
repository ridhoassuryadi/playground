fn main() {
    let course = "Rust";
    
    let found_course = match {
        "Rust" => "Rust"
        "Java" => "Java"
        "Elm" => "Elm"
        _ => "Unknown language"
    };
    
    println!("found:{}", found_course);
}