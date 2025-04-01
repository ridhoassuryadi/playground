// EXAMPLE BASIC
const id = <T>(x:T):T => x
/**
 * catatan: 
 * id menerima variable x yang bertipe T dan mengembalikan tipe t
 * ketika t disubtitusikan dengan number, maka bunyinya id menerima number
 * dan mengembalikan number
 */

//  EXAMPLE GENERIC DATA STRUCTURE
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
