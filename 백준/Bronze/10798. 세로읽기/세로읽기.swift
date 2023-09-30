var twoDimensionArray = [[Character]]()
var maxLenght = 0
var answerString = ""

for _ in 1...5 {
    let array = Array(readLine()!)
    twoDimensionArray.append(array)
    maxLenght = (maxLenght < array.count ? array.count : maxLenght)
}

for x in 0..<maxLenght {
    for y in 0..<5 {
        if twoDimensionArray[y].count-1 >= x {
            answerString += String(twoDimensionArray[y][x])
        }
    }
}

print(answerString)
