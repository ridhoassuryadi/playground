module type Printable = {
    type t;
    let print: t => string;
};

module type S = (Fst: Printable, Snd: Printable) => {
    type t;
    let make: (Fst.t, Snd.t) => t;
    let print: t => string
};

module Make = (Fst: Printable, Snd: Printable) => {
    type t = (Fst.t, Snd.t)
    let make = (f: Fst.t, s:Snd.t) => (f,s)
    let print = ((f,s):t) => 
        "("++Fst.print(f)++","++Snd.print(s)++")";
}

module PrintableString = {
    type t = string;
    let print = t => t;
}

module PrintableInt = {
    type t = int;
    let print = t => string_of_int(t)
};

module Printer = Make(PrintableString, PrintableInt);

let _x = Printer.({
  make("x", 23)
  |> print
  |> Js.log
})
