fn arr_square() -> [i32;5] {
    let mut arr = [1,2,3,4,5];
    for i in 0..5{
        arr[i] = arr[i] * arr[i]
    }

    arr
}