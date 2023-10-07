let k = Int(readLine()!)!
var stack = [Int]()

for _ in 1...k {
    let num = Int(readLine()!)!
    switch num {
    case 0: if !stack.isEmpty { stack.removeLast() }
    default: stack.append(num)
    }
}

print(stack.reduce(0, +))
