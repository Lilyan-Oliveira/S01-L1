use std::io; // Inclui a biblioteca std::io

fn preenche_arr(arr: &mut [i32], x: i32) {
    for i in 0..arr.len() {
        arr[i] = i as i32 * x;
    }
}

fn main() {
    let mut arr = [0; 10]; // Cria um array de 10 elementos, todos iniciados com 0

    println!("Entre com um valor para preencher o array:");

    let mut input = String::new();
    io::stdin()
        .read_line(&mut input)
        .expect("Falha ao ler a linha");

    let number_cvt: i32 = input
        .trim()
        .parse()
        .expect("Por favor, insira um número válido");

    preenche_arr(&mut arr, number_cvt);

    println!("Array preenchido: {:?}", arr);
}
