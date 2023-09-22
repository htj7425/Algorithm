var stack: [Int] = []

let push = {(num: Int) -> Void in
    stack.append(num)
}

let pop = {() -> Int in
    if stack.count == 0 {
        return -1
    }
    return stack.removeLast()
}

let size = {() -> Int in
    stack.count
}

let empty = {() -> Int in
    stack.isEmpty ? 1 : 0
}

let top = {() -> Int in
    stack.last ?? -1
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

