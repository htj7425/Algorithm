let xySize = readLine()!.split(separator: " ").map{ Int($0)! }

var twoDeimensionArray = [[Int]](repeating: [Int](repeating: 0, count: xySize[1]), count: xySize[0])

for _ in 1...2{
    for i in 0..<xySize[0] {
        let array = readLine()!.split(separator: " ").map{Int($0)!}
        
        for j in 0..<xySize[1] {
            twoDeimensionArray[i][j] += array[j]
        }
    }
}

twoDeimensionArray.forEach{
    print($0.map{String($0)}.joined(separator: " "))
}
