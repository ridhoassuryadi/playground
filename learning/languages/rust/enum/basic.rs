
#[derive(Debug)]
enum Traffic {
    Green, Yellow, Red
}

fn main(){
    let run = Traffic::Green;
    let stop = Traffic::Red;
    let careful = Traffic::Yellow;
    
    println!("{:?} go!, and {:?}, then be {:?}", run, stop, careful)
}