

class Box {
    constructor(v){
        this.v = v;
    }

    static of(v){
        return v ? new Box(v) : new Box(0)
    }

    map(f) {
        this.v = f(this.v)
        return this;
    }
}

const rest1 = Box.of(10);

console.log(
    rest1.map(v => v + 1)
)