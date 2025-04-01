function sayName<T>(names: T[]): string{
    return names.join(",")
}

function testing<Type>(test: Type): Type{
    return test
}

testing<string>("sss")


// 
interface RemoteData<T> {
    data:T,
    status: 'IDLE' | 'FETCHING' | 'SUCCESS' | 'ERROR'
}

interface UserData {
    name: string,
    age: number
}

const createRemoteData = <T>(data:T): RemoteData<T> => ({
    data,
    status: 'IDLE'
})

createRemoteData({name: "ridho", age: 12})
// remote data  {data: {name: "ridho", age: 12}, status: 'IDLE'}
// type RemoteData<UserData>

createRemoteData("hello there")
// remote data "hello there"
// type RemoteData<string>
