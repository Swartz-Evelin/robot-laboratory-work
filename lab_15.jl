function маркировать_периметр_на_поле_с_маркерами(r::Robot)
    путь = перейти_в_левый_нижний_угол_и_вернуть_путь(r)
    for i ∈ (Ost, Nord, West, Sud)
        маркировать_направление(r, i)
    end
    пройти_по_пути(r, путь)
end

println("основная функция: маркировать_периметр_на_поле_с_маркерами(r::Robot)")