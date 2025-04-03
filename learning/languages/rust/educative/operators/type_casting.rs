/// Type casting
/// type casting is when you **converting** data type to something other
/// in rust type casting defined as `as`
/// data type can be casted :
/// * integer can be casted to floating point and vice versa
/// * integer can be casted to string


fn main() {
    let a = 15;
    let b = a as f32 / 3.0;
    println!("a:{}", a);
    println!("b:{}", b);
}