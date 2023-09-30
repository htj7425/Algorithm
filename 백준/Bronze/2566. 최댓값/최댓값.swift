var rowMax = 0
var rowIndex = 0
var twoDimensionArray = [[Int]]()

for _ in 1...9 {
    let array = readLine()!.split(separator: " ").map{Int($0)!}
    twoDimensionArray.append(array)
}

for i in 0..<9 {
    if rowMax < twoDimensionArray[i].max()! {
        rowMax = twoDimensionArray[i].max()!
        rowIndex = i
    }
}

print(rowMax)
print(rowIndex+1, twoDimensionArray[rowIndex].firstIndex(of: rowMax)!+1)
