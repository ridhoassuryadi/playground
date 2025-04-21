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

#[test]
fn boolean() {
    let a = true;
    let b: bool = false;

    println!("a: {}, b: {}", a, b);
}

#[test]
fn comparison() {
    let a = 20;
    let b = 20;

    let result: bool = a >= b; 
    println!("test: {}", result);
}

#[test]
fn boolean_operator() {
    let absen = 75;
    let nilai_akhir = 80;

    let lulus_absen: bool = absen >= 75;
    let lulus_nilai_akhir: bool = nilai_akhir >= 75;

    let lulus: bool = lulus_absen && lulus_nilai_akhir;
    println!("asoy");
    println!("hasil bool operator: {}", lulus);
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

#[test]
fn char_type() {
    let char1: char = 'a';
    let char2: char = 'b';

    println!("{} {}", char1, char2);
}

#[test]
fn tupple() {
    let mut data: (i16, f64, bool) = (10, 10.5, false);
    println!("{:?}", data);

    let (a, b, c) = data;
    println!("tupple before: {} {} {}", a, b, c);

    data.0 = 11;
    data.1 = 0.6;
    data.2 = true;
    println!("tupple after: {:?}", data);
}

#[test]
fn unit() {
    println!("hello");
}

#[test]
fn test_unit() {
    let result: () = unit();
    println!("{:?}", result);

    let test: () = ();
    println!("{:?}", test)
}

#[test]
fn two_dimensional_array() {
    let matrix: [[i32; 3]; 2] = [
        [1, 2, 3],
        [4, 5, 6]
    ];

    println!("{:?}", matrix);
    println!("{:?}", matrix[0]);
    println!("{:?}", matrix[0][0]);
    println!("{:?}", matrix[0][1]);
    println!("{:?}", matrix[0][2]);
    println!("{:?}", matrix[1]);
    println!("{:?}", matrix[1][0]);
    println!("{:?}", matrix[1][1]);
    println!("{:?}", matrix[1][2]);
}

const MAXIMUM: i32 = 100;

#[test]
fn constant() {
    const MINIMUM: i16 = 25;
    println!("min:{} max:{}", MINIMUM, MAXIMUM);
}

#[test]
fn variable_scope() {
    println!("MAXIMUM: {}", MAXIMUM);

    let porsi = 1;

    {
        println!("porsi 1: {}", porsi);

        let fullfilled = true;
        println!("fullfilled: {}", fullfilled);
    }

    // println!("FULLFILLED: {}", fullfilled); //error
}

#[test]
fn stack_heap() {
    function_a();
    function_b();
}

#[test]
fn function_a() {
    let a = 10;
    let b = String::from("Ridho");
}

#[test]
fn function_b() {
    let a = 15;
    let b = String::from("Assuryadi");
}

#[test]
fn string() {
    let name: &str = "   Ridho Assuryadi  ";
    let trimmed_name: &str = name.trim();

    println!("{} name", name);
    println!("{} trimmed name", trimmed_name);
}

#[test]
fn string_type() {
    let mut name: String = String::from("Nasi goreng");
    println!("{}", name);

    name.push_str("Sayur");
    println!("{}", name);

    let sambal = name.replace("Nasi", "Sambal");
    println!("{}", sambal);
    println!("{}", name);
}