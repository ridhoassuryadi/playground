#![allow(dead_code)]
#[derive(Debug)]
enum Traffic {
    Red,Yellow,Green
}

impl Traffic {
    fn is_stop(&self)->bool{
        match self{
            Traffic::Red => true,
            _ => false
        }
    }
}

fn main(){
  let light_traffic = Traffic::Yellow;
  println!("Light is {:?}, it is Stop? {:?}", light_traffic, light_traffic.is_stop());
}