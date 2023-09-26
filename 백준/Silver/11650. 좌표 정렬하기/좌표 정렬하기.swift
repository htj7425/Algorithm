let n = Int(readLine()!)!
var xyArr: [[Int]] = []

for _ in 1...n {
    let temp = readLine()!.split(separator: " ").map{ Int($0)! }
    xyArr.append([temp[0], temp[1]])
}

xyArr = xyArr.sorted(by: { $0[0] == $1[0] ? $0[1] < $1[1] : $0[0] < $1[0] })

for i in xyArr {
    print("\(i[0]) \(i[1])")
}
