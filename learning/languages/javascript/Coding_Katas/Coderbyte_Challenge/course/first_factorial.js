function FirstFactorial(num){
    if (num <= 2){
	return 1;
    }
    else {
	console.log(num);
	return num * FirstFactorial(num - 1);
    }
}

console.log(FirstFactorial(10));
