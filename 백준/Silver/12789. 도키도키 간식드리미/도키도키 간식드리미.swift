let n = Int(readLine()!)!
let numbers = readLine()!.split(separator: " ").map{Int($0)!}

var tempStack = [Int]()
var priority = 1
for i in 0..<numbers.count {
    if priority == numbers[i] {
        priority += 1
    } else {
        tempStack.append(numbers[i])
    }
    while priority == tempStack.last {
        _ = tempStack.popLast()
        priority += 1
    }
}

for _ in 0..<tempStack.count {
    if priority == tempStack.last {
        _ = tempStack.popLast()
        priority += 1
    }
}

if tempStack.isEmpty {
    print("Nice")
} else {
    print("Sad")
}