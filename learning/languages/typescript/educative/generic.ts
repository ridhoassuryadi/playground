function checking<Type>(arg: Type):Type{
  return arg
}

function loggingIdentity<Type>(arg: Type[]): Type[]{
    console.log(arg.length)
    return arg
} 