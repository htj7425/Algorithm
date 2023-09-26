var xyArray: [[Int]] = []
let n = Int(readLine()!)!

for _ in 1...n{
    xyArray.append(Array(readLine()!.split(separator: " ").map{ Int($0)! }))
}

xyArray.sort(by: { $0[1] == $1[1] ? $0[0] < $1[0] : $0[1] < $1[1] })

for i in xyArray {
    print("\(i[0]) \(i[1])")
}
