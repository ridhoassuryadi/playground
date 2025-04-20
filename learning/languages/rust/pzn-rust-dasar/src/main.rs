fn main() {
    println!("Hello, world!");
}

#[test]
fn hello_test() {
    println!("hello there")
}

#[test]
fn test_variable() {
    let name = "Ridho";
    println!("{}", name);
}

#[test]
fn static_typing() {
    let name = "Ridho assuryadi";
    println!("{}", name);

    println!("Hello {}", name);
}

#[test]
fn test_mutable() {
    let mut name = "Eko Kurniawan Kennedy";
    println!("{}", name);

    name = "Ridho Assuryadi";
    println!("{}", name);
}

#[test]
fn shadowing() {
    let name = "Ridho Assuryadi";
    println!("Hello {}", name);
   
    let name = 10;
    println!("Hello {}", name);
}


struct Person {
   first_name: String,
   middle_name: String,
   last_name: String,
   age: u8 
}

#[test]
fn get_person() {
    let person: Person = Person{
        first_name: String::from("Muhammad"),
        middle_name: String::from("Ridho"),
        last_name: String::from("Assuryadi"),
        age: 20
    };

    println!("{}", person.first_name);
    println!("{}", person.middle_name);
    println!("{}", person.last_name);
    println!("{}", person.age);
}

