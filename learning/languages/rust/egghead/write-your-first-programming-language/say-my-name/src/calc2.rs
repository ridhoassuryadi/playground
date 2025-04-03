use std::io;

fn main() {
    println!("Please enter first number:");

    let mut first = String::new();
    io::stdin().read_line(&mut first).unwrap();

    println!("Please enter second number:");
    let a:u32 = first.trim().parse().expect("This is not valid number!");

    let mut second = String::new();
    io::stdin().read_line(&mut second).unwrap();

    let b:u32 = second.trim().parse().expect("This is not valid number!");

    let result = sum(a, b);
    println!("{} + {} = {}", a, b, result);
}

fn sum(a:u32, b:u32) -> u32{
    a + b
}
fn say_first_name(name: &String) {
    println!("Hello {}", name);
}