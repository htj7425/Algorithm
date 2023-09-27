func sequenceCheck(_ originalArray: [Int]) -> String {
    let sortArray = originalArray.sorted()
    var stack = [Int]()
    var result = ""
    var originalArrayIndex = 0
    var sortArrayIndex = 0
    
    while(originalArrayIndex < originalArray.count){
        if (stack.last == originalArray[originalArrayIndex]){
            let _ = stack.popLast()
            result += "-\n"
            originalArrayIndex += 1
            continue
        }
        if sortArrayIndex < sortArray.count{
            stack.append(sortArray[sortArrayIndex])
            sortArrayIndex += 1
            result += "+\n"
        } else {
            break
        }
    }
    guard stack.isEmpty else {return "NO"}
    return result
}

let n = Int(readLine()!)!
var nArray = [Int]()

for _ in 1...n {
    nArray.append(Int(readLine()!)!)
}

print(sequenceCheck(nArray))