let nmArray = readLine()!.split(separator: " ").map{Int($0)!}
var twoDimenionArray = Array(repeating: [Int](repeating: 0, count: nmArray[0]), count: nmArray[0])

let cards = readLine()!.split(separator: " ").map{Int($0)!}

for i in 0..<nmArray[0] {
    if i < nmArray[0] {
        for j in i+1..<nmArray[0] {
            twoDimenionArray[i][j] = cards[i] + cards[j]
        }
    }
}

var answer = 0

for i in 0..<nmArray[0] {
    if i < nmArray[0] {
        for j in i+1..<nmArray[0] {
            for o in 0..<cards.count {
                if o != i && o != j {
                    let temp = twoDimenionArray[i][j] + cards[o]
                    if temp <= nmArray[1] && temp > answer {
                        answer = temp
                    }
                }
            }
        }
    }
}

print(answer)
