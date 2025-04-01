// Interface
module type Count = {
    let count: int;
};

// Functor
module Make = (RC: Count) => {
    let rec repeat = (~times:RC.count, str: string) => {
        if (times <= 0) {
            ""
        }else {
            str ++ repeat(~times=times-1, str)
        }
    }
}

// Module for Parameter Functor
module TigaKali: Count = {
    let count = 3
};

// Use it
module Perulangan = Make(TigaKali);

print(Perulangan.repeat("xx"))



