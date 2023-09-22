let n = Int(readLine()!)!
var nArr: [Int] = []

for _ in 1...n {
    nArr.append(Int(readLine()!)!)
}

nArr.sort()
for i in nArr {
    print(i)
}

//다른 사람 풀이 - 시간 더 빠름
//print(nArr.map{ String($0) }.joined(separator: "\n"))