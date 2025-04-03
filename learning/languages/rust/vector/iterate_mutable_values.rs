fn main() {
    let mut my_vec = vec![1, 2, 3, 4, 5];
    for x in my_vec.iter_mut(){
        *x += 4;
    }
    my_vec.push(23); 
    println!("Vector : {:?}",my_vec);
    println!("Length of the vector : {}",my_vec.len());
}