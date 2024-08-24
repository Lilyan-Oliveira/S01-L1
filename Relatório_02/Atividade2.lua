-- Inicializar a tabela
local tabela = {}

-- Preencher a tabela com valores aleatórios
for i = 1, 100 do
    tabela[i] = math.random(1, 100)
end

-- Contar os números pares
local contagemPares = 0

for i = 1, 100 do
    if tabela[i] % 2 == 0 then
        contagemPares = contagemPares + 1
    end
end

print("Tabela de valores aleatórios:")
for i = 1, 100 do
    io.write(tabela[i] .. " ")
    if i % 10 == 0 then
        print() -- Nova linha a cada 10 valores
    end
end

print("Número de valores pares: " .. contagemPares)
