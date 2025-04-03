struct Rectangle {
    width: u32,
    height: u32,
}

// impl construct to define struct methods
impl Rectangle {
    // static method of struct
    fn make(width:u32, height:u32) -> Rectangle {
        Rectangle {
            width,
            height
        }
    }
    // methods of struct
    fn show(&self){
        println!("width:{}, height:{}", self.width, self.height);
    }
}

fn main() {

    let kotak = Rectangle::make(21, 21);
    
    kotak.show();
    
}
   