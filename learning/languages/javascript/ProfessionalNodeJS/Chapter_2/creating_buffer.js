/*
Javascript Yang dulu sangat bagus dalam segi HTTP / Module Web,
akan tetapi penggunaan seperti file request atau fungsi I/O kita
membutuhkan fungsi buffer.
*/

var buf = new Buffer('my buffer content'),
    encodeHello = new Buffer('Hello World', 'base64')
// accessing the 10th position of buf
console.log(buf[10]); // ->99


console.log(buf.toString());
console.log(encodeHello);
