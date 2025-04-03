fn main(){
    let mut x:[i8;4] = [1,4,23,2];
    
    let y = [0;4];
    println!("{:?}",y); // [0,0,0,0]

    x[1] = 3;
    println!("{:?}",x) // [1,3,23,2]
}