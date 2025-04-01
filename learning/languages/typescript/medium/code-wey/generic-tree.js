// utilization 
var leaf = function (value) { return ({
    kind: "leaf",
    value: value
}); };
var branch = function (left, right) { return ({
    kind: "branch",
    left: left,
    right: right
}); };
var mapTree = function (map, tree) {
    switch (tree.kind) {
        case "leaf":
            return leaf(map(tree.value));
        case "branch":
            return branch(mapTree(map, tree.left), mapTree(map, tree.right));
    }
};
var a = leaf("1");
var b = branch(branch(leaf(1), branch(leaf(1), leaf(2))), leaf(1));
var c = mapTree(function (v) { return v + 1; }, b);
console.log(a);
console.log(b);
console.log(c);
