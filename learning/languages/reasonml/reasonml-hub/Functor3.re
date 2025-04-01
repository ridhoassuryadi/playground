module type Printable = {
    type t
    let print: t => string;
};

module type FunctorType = {
    type fst;
    type snd;
    type t;
    let make: (fst, snd) => t;
    let print: (t) => string;
};

module Make = (fst: Printable, snd: Printable) : (FunctorType with type fst = Fst.t and snd = Snd.t) => {
    type fst = Fst.t;
    type snd = Snd.t;
    type t = (fst, snd);
    let make = (fst, snd) => (fst, snd)
    let print = ((fst, snd): t) =>
        Fst.print(fst) ++ Snd.print(snd)
}

module PrintString = {
    type t = string;
    let print = t => "HELLO" ++ t;
}

module Printer = Make(PrintString, PrintString);

Printer.({
    make("s", "x")
    |> print 
    |> Js.log
})