struct Course {
    code: i32,
    name: String,
    level: String,
}

fn get_rust_course(c1: Course, c2: Course) -> Course {
    if c1.name == "Rust" {
        c1
    }else {
        c2
    }
}

fn main() {

    let rust_course = Course {
        code: -1,
        name: String::from("Rust"),
        level: String::from("Beginner"),
    };
    
    let java_course = Course {
        code: 2,
        name: String::from("Java"),
        level: String::from("Expert"),
    };
    
    let course = get_rust_course(rust_course, java_course);
    println!("name:{}, level:{}, code:{}", course.name, course.code, course.level);
    
}