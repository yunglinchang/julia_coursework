
println("請輸入您的名字")
name = readline()

while true
    println("請輸入您的身高(公分)")
    global cmheight = readline()
    try
        parse(Float64, cmheight)
        break
    catch err
        if isa(err, ArgumentError) #出現ArgumentError
            #print("錯了")
        end
    end
end
cmheight = parse(Float64, cmheight)
mheight = cmheight/100

println("請輸入您的體重(公斤)")
weight = parse(Float64, readline())

newBMI = round((1.3*weight) / (mheight^2.5), digits=3)


println(name, "您好!")
println("您所輸入的資料如下: ","⾝高:", cmheight, " ","公分", " ", "體重:", weight, " ","公⽄")
println("我們為您計算最新的BMI指數為:", newBMI)

println("請輸入第一項產品項目")
product1 = readline()
println("請輸入第一項產品金額")
price1 = parse(Float64, readline())

println("請輸入第二項產品項目")
product2 = readline()
println("請輸入第二項產品金額")
price2 = parse(Float64, readline())

println("請輸入第三項產品項目")
product3 = readline()
println("請輸入第三項產品金額")
price3 = parse(Float64, readline())

println("請輸入第四項產品項目")
product4 = readline()
println("請輸入第四項產品金額")
price4 = parse(Float64, readline())

println("請輸入第五項產品項目")
product5 = readline()
println("請輸入第五項產品金額")
price5 = parse(Float64, readline())

Total = price1 + price2 + price3 + price4 + price5
Average = Total/5

#消費總額及平均消費金額
println("消費總額: ", Total)
println("平均消費金額: ", Average)


