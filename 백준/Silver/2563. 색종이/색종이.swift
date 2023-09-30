var whitePaper = Array(repeating: [Int](repeating: 0, count: 100), count: 100)
var sum = 0

for _ in 1...Int(readLine()!)! {
    let blackPaper = readLine()!.split(separator: " ").map{Int($0)!}
    
    for x in blackPaper[0]...blackPaper[0]+9 {
        for y in blackPaper[1]...blackPaper[1]+9 {
            whitePaper[x][y] = 1
        }
    }
}


for x in 0...99 {
    for y in 0...99 {
        sum += whitePaper[x][y]
    }
}


print(sum)
