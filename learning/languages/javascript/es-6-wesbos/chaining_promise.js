const posts = [
    {title : 'I Love Javascript', author: 'Wes Bos', id : 1 },
    {title : 'CSS!', author : 'Chris Coyier', id : 2 },
    {title : 'Dev tools tricks', author : 'Addy Osmani', id : 3}
]

const authors = [
    {name : 'Wes Bos', twitter : '@wesbos', bio: 'Canadian Developer' },
    {name : 'Chris Coyier', twitter: '@chriscoyier', bio: 'CSS Tricks and Codepen'},
    {name : 'Addy Osmani', twitter: '@addyosmani', bio: 'Googler'}
]


const findPostById = (id) => new Promise((resolve, reject) => {
    setTimeout(() => {
	const post = posts.filter(post => post.id === id);
    
	if (post) resolve(post)

	reject('not found');
    },1000);
});

const getDetailedAuthor = (post) => new Promise((resolve, reject) => {
    setTimeout(() => {
	const author = authors.find(author => authors.name === post.name);
	if(author) resolve(author)

	reject('not found')
    },1000);
    
})


findPostById(2).then(data => getDetailedAuthor(data))
		.then(author => console.log(`Author is ${JSON.stringify(author)}`))
               .catch(error => console.log(error))
