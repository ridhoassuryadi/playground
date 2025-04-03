fn main() {
    let mut word = "Learn".to_string();
  
    word.push_str(" Rust");
    
    println!("{}", word);
    
    
    let course = "Rust".to_string();
    let course_type = "From beginner".to_string();
    let course_creator = "by Course";
    
    let description = format!("{} {} from {}", &course, course_type, course_creator);
    println!("{}", description);
    
    let result = course + &course_type;
    println!("{}", result);
}