// Array is homogenous sequence of elements, meaning each element has same type
fn main(){
    let arr:[i8;3] = [3,6,12];

    let sliced_arr:&[i8] = &arr[0..3];
    println!("{:?}", sliced_arr);
}