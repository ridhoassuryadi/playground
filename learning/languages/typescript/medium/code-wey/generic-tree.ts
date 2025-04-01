type Tree<A> = Leaf<A> | Branch<A>

type Leaf<A> = {
  kind: "leaf",
  value: A
}

type Branch<A> = {
  kind: "branch",
  left: Tree<A>
  right: Tree<A>
}

// utilization 

const leaf = <A>(value: A): Leaf<A> => ({
  kind: "leaf",
  value
})

const branch = <A>(left:Tree<A>, right:Tree<A>): Branch<A> => ({
  kind: "branch",
  left,
  right
})

const mapTree = <A,B>(map: (val: A) => B, tree: Tree<A>): Tree<B> => {
    switch(tree.kind){
        case "leaf":
            return leaf(map(tree.value))
        case "branch":
            return branch(
              mapTree(map, tree.left),
              mapTree(map, tree.right)
            )
    }
};
const a = leaf("1")

const b = branch(
    branch(
        leaf(1),
        branch(leaf(1), leaf(2))
    ),
    leaf(1)
    )

const c = mapTree((v) => v + 1, b)

console.log(a)
console.log(b)
console.log(c)

