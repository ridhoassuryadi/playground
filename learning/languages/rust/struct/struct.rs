struct Course {
    code: i32,
    name: String,
    level: String,
}

fn main() {

    let mut rust_course = Course {
        code: -1,
        name: String::from("Rust"),
        level: String::from("Beginner"),
    };
    
    let java_course = Course {
        code: 2,
        name: String::from("Java"),
        level: String::from("Expert"),
    };
    
    rust_course.name = "Learn rust from scratch".to_string();
    println!("name:{}, code:{}, level:{}", rust_course.code, rust_course.name, rust_course.level);
    println!("name:{}, code:{}, level:{}", java_course.code, java_course.name, java_course.level);
}
   