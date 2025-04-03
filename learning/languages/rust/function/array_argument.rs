fn modify_array(arr:&mut [i16;5]){
    arr[1] = 3;
    arr[3] = 1;
  }
  
  fn main() {
      let mut arr = [1,2,3,4,5];
      println!("before:{:?}", arr);
      modify_array(&mut arr);
      println!("after:{:?}", arr);
      
  }