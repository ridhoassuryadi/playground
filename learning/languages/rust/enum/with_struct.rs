#[derive(Debug)]
enum Movement {
    Horizontal,Vertical
}

#[derive(Debug)]
struct Player {
    color: String,
    movement: Movement
}

fn main(){
  let p1 = Player{
      color: String::from("white"),
      movement: Movement::Horizontal
  };
  
    let p2 = Player{
      color: String::from("black"),
      movement: Movement::Vertical
  };
  
  println!("{:?}, {:?}", p1, p2);
}