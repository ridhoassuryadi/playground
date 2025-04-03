/// Tupple
/// tuple is heterogeneus sequences of elements, 
/// means each element in a tupple has different type
fn main(){
    // immutable by default
    let c:(&str, i32, &str) = ("ridho", 23343, "cars");
    
    // Accessing the tupple
    let (name, money, property) = c;
    println!("name:{} , money:{}, property:{}", name, money, property);
    
    // Accessing tupple by index
    println!("tupple number 2 is: {}", c.2);
    
    // mutable tupple
    let mut x:(&str, bool) = ("food", false);
    
    // change tuple by index
    x.1 = true;
    println!("{:?}", x);
    
}