

function Node(data) {
    this.data = data;
    this.left = null;
    this.right = null;
    return this;
}

//create nodes 
let root = new Node('A');
let n1 = new Node('B');
let n2 = new Node('C');
let n3 = new Node('D');
let n4 = new Node('E');

//setup children
root.left = n1;
root.right = n2;
n1.left = n3;
n1.right = n4;

function pre_order(root, nodes = []){
    nodes.push(root.data);
    if (root && root.left){
	pre_order(root.left, nodes); //if left side has value just recursiveliy
    }
    if (root && root.right){
	pre_order(root.right, nodes);
    }
    return nodes;
}

function post_order(root, nodes){
    if (root && root.left){
	post_order(root.left, nodes);
    }
    if (root && root.right){
	post_order(root.right, nodes);
    }
    nodes.push(root.data);
    return nodes;
}

function level_order(root, nodes){
    var queue = [root];
    console.log(queue.length);
}

level_order(root, []);
console.log(pre_order(root, []));
console.log(post_order(root, []));
