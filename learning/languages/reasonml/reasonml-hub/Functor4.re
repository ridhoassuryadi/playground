module type Printable = {
    type t;
    let print = t => string;
};

module type MakeType = {
    type fst;
    type snd;
    type t;
    let make: (f, s) => t;
    let print (t) => string;
};

module FunctorCreator = (fst:Printable, snd: Printable) : (MakeType with fst := Fst.t and snd := Snd.t) => {
  type t = (Fst.t, Snd.t);
  let make = (f: Fst.t, snd: Snd.t) => (f,s)
  let print = ((f,s):t)= Fst.print(f) ++ Snd.Print(s)
}

module PS  = {
    type t = string;
    let print = t => t;
}

module X = FunctorCreator(PS, PS);

X.({
    make("x", "s")
    |> print 
    |> Js.log
})