let n = Int(readLine()!)!

var fiveKgSugar = n/5
var remainSugar = n%5
var answer = 0

while true{
    if remainSugar % 3 == 0 {
        answer = fiveKgSugar + remainSugar/3
        break
    }
    if fiveKgSugar > 0{
        fiveKgSugar -= 1
        remainSugar += 5
    } else {
        answer = -1
        break
    }
}

print(answer)
