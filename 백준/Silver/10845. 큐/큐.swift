var queue: [Int] = []

let push = {(num: Int) -> Void in
    queue.append(num)
}

let pop = {() -> Int in
    if queue.count == 0 {
        return -1
    }
    return queue.removeFirst()
}

let size = {() -> Int in
    queue.count
}

let empty = {() -> Int in
    queue.isEmpty ? 1 : 0
}

let front = {() -> Int in
    queue.first ?? -1
}

let back = {() -> Int in
    queue.last ?? -1
}

let n = Int(readLine()!)!
for _ in 1...n {
    let command = readLine()!.split(separator: " ")
    switch String(command[0]) {
    case "push":
        push(Int(command[1])!)
    case "pop":
        print(pop())
    case "size":
        print(size())
    case "empty":
        print(empty())
    case "front":
        print(front())
    case "back":
        print(back())
    default:
        break
    }
}
