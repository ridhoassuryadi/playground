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

/*
* Ini komentar
* Jika lebih dari 1 
* atau mungkin lebih dari 2
*/
#[test]
fn comment() {
    // ini komentar 1 baris
    println!("ahoy!!!1");
}

#[test]
fn number() {
    let a: i8 = 10;
    println!("i8 {}", a);

    let b: i16 = 21;
    println!("i16 {}", b);

    let c: f32 = 244.1;
    println!("f32 {}", c)
}

#[test]
fn number_conversion() {
   let a: i8 = 10;
   println!("a {}", a);
   
   let b: i16 = a as i16;
   println!("b: {}", b);

   let c: f32 = b as f32; 
   println!("c: {}", c);
}

#[test]
fn numeric_operator() {
    let a = 10;
    let b = 2;
    let c = a * b;
    println!("c: {}", c);

    let d = a / b;
    println!("d: {}", d);

    let e = a + b;
    println!("e: {}", e);
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

