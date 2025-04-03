fn draw (n:i32) {
        // Write code here!
        for i in 1..n+1 {
            for j in 1..i+1{
                print!("&");
            }
            println!("");
        }
}

fn main(){
    draw(24);
}