#!/usr/bin/env lua

--[[
Источник:
Р. В. Шамин, лекция "Стохастический анализ и его приложения в машинном обучении."
https://youtu.be/I2u5PfQRtJo?t=4516

Выгодно-ли играть в следущую игру?
Рулетка,
с вероятностью 2/3 - выигрыш 2 рубля.
с вероятностью 1/3 - проигрыш 3 рубля

Скольких экспериментов достаточно для минимального ответа на задание? (1)
Сколько "внешних" экспериментов нужно провести для проверки утверждения (1)?
--]]

local rand = math.random


--print(rand())
--print(rand())
--print(rand())
--print(rand())

local EXPERIMENTS_NUM = 1000
local bank = 0.

--for j = 1, 10 do 
    --print(os.time())
    math.randomseed(os.time())
    for i = 1, EXPERIMENTS_NUM do
        local p = rand()
        print("i, p, bank", i, p, bank)
        -- Важно-ли, что не захватывается точное значение 2/3 в условии?
        if p > 0 and p < 2/3 then
            bank = bank + 2
        elseif p > 2/3 then
            ----bank = bank - 3
            bank = bank - 3.5
            --bank = bank - 4
        end
    end
--end

print('bank', bank)
