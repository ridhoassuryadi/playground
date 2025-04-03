/// Break statement
/// The break statement terminates the loop. 
/// It is generally placed inside a conditional statement so that the loop terminates if the associated condition is true.
fn main() {
    let mut i = 1;
    // define a loop
    loop{
      println!("i:{}", i);
      if i == 5 {
        break;
      }
      i = i + 1;    
    }
  }