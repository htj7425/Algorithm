//기수 정렬
var nArr: [Int] = Array(repeating: 0, count: 10001)

let n = Int(readLine()!)!

for _ in 1...n {
    let temp = Int(readLine()!)!
    nArr[temp] += 1
}

var result = ""

for i in 1...10000 {
    result += String(repeating: "\(i)\n", count: nArr[i])
}

print(result)