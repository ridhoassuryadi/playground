nums = [1,3,4]

angka = nums

nums.push(2)
p angka #[1,3,4,2] yeap there is same adress


nom = nums.dup #we just copy the values not the adress
angka.push(1)

p nom #[1,3,4,2] its still same