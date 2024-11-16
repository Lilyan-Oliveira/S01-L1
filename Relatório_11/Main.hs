module Main where

Questão 1
main :: IO ()
main = do
    -- Criar a lista de 30 até 1 (especificando o tipo como Integer)
    let lista :: [Integer]
        lista = [30,29..1]
    print lista

    -- Multiplicar cada elemento por 3
    let listaMultiplicada = map (*3) lista

    -- Inverter a lista
    let listaInvertida = reverse listaMultiplicada
    print listaInvertida

    -- Mostrar o último elemento
    print (last listaInvertida)
    
Questão 2
calcular :: Int -> Int
calcular n
  | n > 0 = factorial n
  | n == 0 = 1
  | otherwise = n * 2

factorial :: Int -> Int
factorial 0 = 1
factorial x = x * factorial (x - 1)

main :: IO ()
main = do
  putStrLn "Digite um número:"
  input <- getLine
  let numero = read input :: Int
  let resultado = calcular numero
  putStrLn ("Resultado: " ++ show resultado)
  main -- Chama novamente a função para permitir a execução repetida
*/