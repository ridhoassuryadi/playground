struct Circle {
    radius: f32
}

struct Rectangle {
    width: f32,
    height: f32
}

trait Area {
    fn shape_area(&self)->f32;
}

impl Area for Circle {
    fn shape_area(&self)->f32{
        3.14 * self.radius * self.radius
    }
}

impl Area for Rectangle {
    fn shape_area(&self)->f32{
        self.width * self.height
    }
}
fn main(){
    let circle = Circle{
        radius: 7.0
    };
    
    let rectangle = Rectangle{
        width:2.0,
        height: 3.0
    };
    
    println!("{}", circle.shape_area());
    println!("{}", rectangle.shape_area());
}