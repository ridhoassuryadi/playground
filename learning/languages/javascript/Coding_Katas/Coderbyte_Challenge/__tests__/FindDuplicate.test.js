var FindDuplicate = require('../algorithm/find_duplicates');


test('Find Duplicate in [5,3,5,4,1,3]', () => {
    expect(FindDuplicate([5,3,5,4,1,3])).toEqual(expect.arrayContaining([5,3,5,4,1]))
})
