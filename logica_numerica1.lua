--EXERCÍCIO: Encontre o padrão de aplicação da função e crie-a de acordo com os exemplos:
--         Exemplo:
--             Quando aplicada:
--                 f(1,10)
--             Ela retorna essa informação:
--                 {1,3,5,7,9}
--         Exemplo 2:
--             Quando aplicada:
--                 f(11,31)
--             Ela retorna essa informação:
--                 {11,13,15,17,19,21,23,25,27,29,31}
--         Exemplo 3:
--             Quando aplicada:
--                 f(12,15)
--             Ela retorna essa informação:
--                 {13,15}

      -------------------------------------------------------------------------
        -- RESPOSTA
      -------------------------------------------------------------------------

tabela = {}

function f(var1,var2)
    if var1 < var2 then
        repeat
            divide = var1/2
            verimpar = string.sub(divide, -1, -1)
            verimparnum = tonumber(verimpar)
            if verimparnum ~= 0 then
                table.insert(tabela,var1)
            end
                var1 = var1+1
        until var1 > var2
            return tabela
    elseif var1 == var2 then
        divide = var1/2
        verimpar = string.sub(divide, -1, -1)
        verimparnum = tonumber(verimpar)
        if verimparnum ~= 0 then
            table.insert(tabela,var1)
            return tabela
        end
    else
        print("Valor 1 precisa ser menor ou igual ao valor 2!")
    end
end

a = 1 -- COLOCAR AQUI O PRIMEIRO VALOR DA FUNÇÃO
b = 10 -- COLOCAR AQUI O SEGUNDO VALOR DA FUNÇÃO
for k,v in pairs(f(a,b)) do
print(v)
end
