
#[derive(Debug)]
enum Movement {
    Horizontal(String),
    Vertical(String)
}

fn main(){
    let horizontal_move = Movement::Horizontal("Left".to_string());
    let vertical_move = Movement::Vertical("Top".to_string());
    
    println!("{:?} go!, and {:?}", horizontal_move, vertical_move)
}