
println("請輸入第一組數字")
N1 = parse(Int64, readline())
println("請輸入第二組數字")
N2 = parse(Int64, readline())
println("請輸入第三組數字")
N3 = parse(Int64, readline())

if N1 > N2 #一大於二
    if N2 > N3 #一大於二，二又大於三
        println("您所輸入的三個數字為：","$N1",", $N2",", $N3")
        println("最大的整數為：",N1)
        println("其中")
        println("最小的整數為：",N3)
    else #一大於二，三大於二
        if N1 > N3 #一大於二，三大於二，但一大於三
            println("您所輸入的三個數字為：","$N1",", $N2",", $N3")
            println("其中")
            println("最大的整數為：",N1)
            println("最小的整數為：",N2)
            else #一大於二，三大於二，但三大於一
            println("您所輸入的三個數字為：","$N1",", $N2",", $N3")
            println("其中")
            println("最大的整數為：",N3)
            println("最小的整數為：",N2)
        end
    end
elseif N1 < N2 #二大於一
    if N2 < N3
        println("您所輸入的三個數字為：","$N1",", $N2",", $N3")
        println("其中")
        println("最大的整數為：",N3)
        println("最小的整數為：",N1)
    else
        if N3 > N1
            println("您所輸入的三個數字為：","$N1",", $N2",", $N3")
            println("其中")
            println("最大的整數為：",N2)
            println("最小的整數為：",N1)
        else
            println("您所輸入的三個數字為：","$N1",", $N2",", $N3")
            println("其中")
            println("最大的整數為：",N2)
            println("最小的整數為：",N3)
        end
    end
end

Number = rand(1:100)

println("請輸入數字")
InputN = parse(Int64, readline())

count=1
while true #當判斷式true停止
    global InputN, Number
    count+=1
    if count<6 && InputN != 0 #當次數<6 true，且輸入不為0 true時，進入下一個if 
        if Number > InputN
            println("第", count,"次輸入",",","請輸入數字")
            println("您猜得太小，請重新輸入")
            InputN = parse(Int64, readline())
        elseif Number < InputN
            println("第", count,"次輸入",",","請輸入數字")
            println("您猜得太大，請重新輸入")
            InputN = parse(Int64, readline())
        else Number = InputN
            println("恭喜猜中!")
            println("正解：",Number)
            break
        end
    elseif count<6 && InputN == 0 #當次數<6 true，且輸入不為0 true時，結束遊戲
        println("遊戲結束")
        println("正解：",Number)
        break
    else #當次數>=6 true，不給猜了
        println("遊戲結束")
        println("正解：",Number)
        break
    end
end


