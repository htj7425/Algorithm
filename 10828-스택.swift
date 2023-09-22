var stack: [Int] = []
var index = -1

let push = {(num: Int) -> Void in
    stack.append(num)
    index += 1
}

let pop = {() -> Int in
    guard index != -1 else { return -1 }
    let temp = stack.remove(at: index)
    index -= 1
    return temp
}

let size = {() -> Int in
    index + 1
}

let empty = {() -> Int in
    (index == -1 ? 1 : 0)
}

let top = {() -> Int in
    guard index != -1 else { return -1 }
    return stack[index]
}

let n = Int(readLine()!)!
for _ in 1...n {
    let command = readLine()!.split(separator: " ")
    switch command[0] {
    case "push":
        push(Int(command[1])!)
    case "pop":
        print(pop())
    case "size":
        print(size())
    case "empty":
        print(empty())
    case "top":
        print(top())
    default:
        break
    }
}
