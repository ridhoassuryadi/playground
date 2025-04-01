let numbers: Array<number> = [1,2,3]

function checkingNums<Type>(arg: Type): Type {
    return arg;
  };

const x = checkingNums<string>("sss")

console.log(outputs)