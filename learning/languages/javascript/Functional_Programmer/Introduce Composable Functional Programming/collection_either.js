
const auth = usr => {
    return usr.name === 'ridho' && usr.password === '123'
}

const fromNullable = x => ({
    chain: f => f(x),
    fold: (t,f) => x() ? t() : f()
})

const renderPage = () => 'Welcome to the page'

const showLogin = () => 'username / password is wrong';


const openSite = usr => 
    fromNullable(() => auth(usr))
        .fold(renderPage,showLogin)

console.log(openSite({name: 'ridho', password: '123'}));