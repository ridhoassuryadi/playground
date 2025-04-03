/// Type casting
/// type casting is when you **converting** data type to something other
/// in rust type casting defined as `as`
/// data type can be casted :
/// * integer can be casted to floating point and vice versa
/// * integer can be casted to string


fn main() {
    let food = ("nasi goreng", "capcay", "udang goreng");
    
    
    // will running and matched, the output will be "yummy! udang goreng"
    if let ("nasi goreng", "capcay", u) = food {
        println!("yummy! {}", u);
    }else {
        println!("nooo!");
    }
    
    // will running but give you warning, #[warn(irrefutable_let_patterns)
    if let _ = 10 {
       println!("ook")
    }
}