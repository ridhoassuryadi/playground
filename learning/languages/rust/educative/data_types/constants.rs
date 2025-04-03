const GLOBAL_SCOPE:&str = "this is global scope";
fn main(){
    const LOCAL_SCOPE:&str = "this is local scope";
    println!("{}", GLOBAL_SCOPE);
    println!("{}", LOCAL_SCOPE);
}