enum Level{
    Beginner, Intermediate, Expert, Unknown
}

fn level_to_caption(level:&Level) -> &'static str{
    match level{
        Level::Beginner => "beginner",
        Level::Intermediate => "intermediate",
        Level::Expert => "expert",
        Level::Unknown => "unknown"
    }
}

struct Course {
    name: String,
    code: i16,
    level: Option<Level>
}

impl Course {
    fn print(&self){
        println!("name:{}, level:{}, code:{}",self.name, level_to_caption(self.level.as_ref().unwrap_or(&Level::Unknown)), self.code);
    }
}

fn main(){
  let rust = Course{
      name: String::from("Rust from beginner"),
      code: 12,
      level: Some(Level::Beginner)
  };
  
    let golang = Course{
      name: String::from("golang from beginner"),
      code: 12,
      level: Some(Level::Intermediate)
  };
    let javascript = Course{
      name: String::from("Rust from beginner"),
      code: 12,
      level: Some(Level::Expert)
  };
  
  rust.print();
  golang.print();
  javascript.print();
}