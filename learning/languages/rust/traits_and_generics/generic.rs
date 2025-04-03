use std::fmt::Display;
fn concatenate<T:Display>(f:T, s:T)->String{
    format!("{}{}", f, s)
}
fn main(){
    println!("{}",concatenate("wadidaw", "prikitiw"))
}