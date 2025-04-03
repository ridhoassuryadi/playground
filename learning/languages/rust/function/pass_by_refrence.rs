/// Type casting
/// type casting is when you **converting** data type to something other
/// in rust type casting defined as `as`
/// data type can be casted :
/// * integer can be casted to floating point and vice versa
/// * integer can be casted to string
fn square(n:&mut i32){
    *n = *n * *n;
}


fn main() {
  let mut n = 4;
  square(&mut n);
  println!("{}", n);
}