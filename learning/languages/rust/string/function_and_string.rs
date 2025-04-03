fn display_description(course: &str, creator:String){
    println!("{} by {}", course, creator);
}

fn main() {
 let course = "Rust";
 let creator = String::from("Educative");
 
 display_description(course,creator);
}