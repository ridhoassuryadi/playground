use std::io;

fn main() {
    println!("Please enter your name:");
    let mut name = String::new();
    io::stdin().read_line(&mut name);
    say_first_name(&name);
}

fn say_first_name(name: &String) {
    println!("Hello {}", name);
}