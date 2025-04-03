/// Type casting
/// type casting is when you **converting** data type to something other
/// in rust type casting defined as `as`
/// data type can be casted :
/// * integer can be casted to floating point and vice versa
/// * integer can be casted to string


fn main() {
    let x = 10;
    let mut y = 13;
    
    let a = &x;
    println!("a:{}", a);
    println!("b:{}", x);
    
    let b = & mut y;
    println!("b:{}", b);
    // println!("y:{}", &y); // -> it will throw error because b has borrow y
    
    *b = 5;
    println!("b:{}", b);
    println!("y:{}", y);
}