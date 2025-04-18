#![allow(dead_code)] 
//declare a structure
struct Car {
   owner_age:i32,
}
struct Motorbike {
   owner_age:i32,
}
//declare a trait
trait Drive {
   fn can_drive(&self)->i32;
}
//implement the trait
impl Drive for Car{
   fn can_drive(&self)->i32{
      if self.owner_age>=18 {
         1
      }
      else {
         0
      }
   }
}
//implement the trait
impl Drive for Motorbike{
   fn can_drive(&self)->i32{
      if self.owner_age>=14{
         1
      }
      else {
         0
      }
   }
}
fn main(){
   let mut c = Car {
      owner_age:16
   };
   println!("Can age = 16 drive a car ? - {}", c.can_drive());
   c.owner_age = 23;
   println!("Can age = 23 drive a car ? - {}", c.can_drive());
   let mut d = Motorbike  {
      owner_age:10
   };
   println!("Can age = 10 drive a motorbike? - {}", d.can_drive());
   d.owner_age = 17;
   println!("Can age = 17 drive a motorbike? - {}", d.can_drive());
}