'use strict'

let keyType = {
    signup : 'secret',
    login : 'keep'
}

let successLogin = (email) => console.log('welcome ', email)

let failedLogin = () => console.log('Email its wrong')

let decodeToken = (key,type) => keyType[type] == key

let signUp = (database) => (field,attr,key) => decodeToken(key,'signup') ? 
					       successLogin(field.email) :
					       failedLogin()


let signUpZakat = signUp('zakat_login')


signUpZakat({email : 'ridho', password : '123456'},['email','password'],'secret')




