fn swap(x:i32, y:32){
    let temp = y;
    let y = x;
    let x = temp;
    println!("x:{} y:{}", x, y);
}

fn main() {
    let x = 12;
    let y = 10;
    swap(x, y);
    println!("x:{} y:{}", x, y);
}