#[derive(Debug)] // prints the value of struct using the debug trait
struct Point {
	x: i32,
	y: i32
}
fn test(point1: Point, point2: Point)-> f32 {
    let distance = i32::pow(point1.x - point2.x,2) + i32::pow(point1.y - point2.y,2);
    let d = distance as f32;
    d.sqrt()
}
fn main(){
    let point1 = Point { x: 3, y: 4 };
    let point2 = Point { x: 2, y: 3 }; 
    println!("point1:{:?}", point1); 
    println!("point2:{:?}", point2); 
    print!("Distance between two points:");
    print!("{}", test(point1, point2));
}