

fn safe_divide_by_3(num:i32)->Result<i32, &'static str>{
    if num%3 == 0{
        Ok(num / 3)
    }else {
        Err("cannot divide by 3")
    }
}

fn main(){
    let six = safe_divide_by_3(6);
    
    match six{
        Ok(num) => println!("result is {}", num),
        Err(error) => println!("error!, {}", error)
    }
}