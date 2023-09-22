let n = Int(readLine()!)!

var nArr = [Int]()

for _ in 1...n {
    nArr.append(Int(readLine()!)!)
}

for i in nArr.sorted() {
    print(i)
}