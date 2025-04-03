struct People {
    first_name: String,
    last_name: String,
    hobby: Vec<String>,
}

// impl construct to define struct methods
impl People {
    fn get_name(&self) -> String{
        format!("{} {}", self.first_name, self.last_name)
    }
}

fn main() {

    let ridho = People {
        first_name: String::from("Ridho"),
        last_name: String::from("Assuryadi"),
        hobby: vec![String::from("programming"), String::from("design")],
    };
    
    println!("name:{}, hobby:{:?}", ridho.get_name(), ridho.hobby);
    
}