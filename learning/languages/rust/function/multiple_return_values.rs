fn calculate_area_perimeter(x:i16, y:i16) -> (i16, i16){
    let area = x * y;
    let perimeter = 2 * (x * y);
    
    (area, perimeter)
  }
  
  fn main() {
      let x = 16;
      let y = 12;
      
      let (area, perimeter) = calculate_area_perimeter(x, y);
      println!("area:{} perimeter:{}", area, perimeter);
  }