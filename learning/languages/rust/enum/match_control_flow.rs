enum Movement {
    Horizontal,Vertical
}

fn print_movement(movement:Movement){
    match movement {
        Movement::Horizontal => {
            println!("move horizontal")
        },
        Movement::Vertical => {
            println!("move vertical")
        }
    }
}

fn main(){
  print_movement(Movement::Horizontal);
  print_movement(Movement::Vertical);
  
}