let wLine = ["W","B","W","B","W","B","W","B"]
let bLine = Array(wLine.reversed())

var wChess = [wLine,bLine,wLine,bLine,wLine,bLine,wLine,bLine]
var bChess = Array(wChess.reversed())

func calcChess(array: [[String]]) -> Int {
    var wCount = 0
    var bCount = 0
    
    for i in 0...7 {
        _ = wChess[i].elementsEqual(array[i], by: {
            if $0 != $1 {
                wCount += 1
            }
            return true
        })
        _ = bChess[i].elementsEqual(array[i], by: {
            if $0 != $1 {
                bCount += 1
            }
            return true
        })
    }
    
    return wCount > bCount ? bCount : wCount
}

let size = readLine()!.split(separator: " ").map{Int($0)!}

var chess: [[String]] = []

for _ in 1...size[0] {
    chess.append(Array(readLine()!).map {String($0)})
}

var minCount = Int.max
for i in 0...size[0]-8 {
    for j in 0...size[1]-8 {
        var tempTwoDimension: [[String]] = []
        for q in i...i+7 {
            tempTwoDimension.append(Array(chess[q][j...j+7]))
        }
        let c = calcChess(array: tempTwoDimension)
        minCount = (c < minCount ? c : minCount)
    }
}

print(minCount)
