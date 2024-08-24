-- Calcular e exibir a tabuada
function calcularTabuada(numero)
    for i = 1, 10 do
        print(numero .. " x " .. i .. " = " .. (numero * i))
    end
end

io.write("Digite um número para calcular a tabuada: ")
local numero = tonumber(io.read())

-- Verificar se o número é válido
if numero then
    -- Calcular e exibir a tabuada
    calcularTabuada(numero)
else
    print("Por favor, digite um número válido.")
end