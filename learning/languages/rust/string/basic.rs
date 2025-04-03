/// Prefer &str as a function parameter or if you want a read-only view of a string;
/// String when you want to own and mutate a string.
fn main() {
    let kata = String::from("Ridho");
    let kalimat = String::from("Mantep banget Ridho");
    
    println!("{} ", kata);
    println!("{} dari {}", kalimat.contains(&kata), kalimat);
    
    let contoh = String::from("Ini vidi itu ganteng banget");
    let pengganti_dari = "vidi";
    let pengganti_untuk = "ridho";
    let akhir = contoh.replace(pengganti_dari, pengganti_untuk);
    
    println!("{} ", akhir);
  }