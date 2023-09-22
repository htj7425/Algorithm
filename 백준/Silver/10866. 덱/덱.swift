var queue = [Int]()

let push_front = {(x: Int) -> Void in
    queue.insert(x, at: 0)
}
let push_back = {(x: Int) -> Void in
    queue.append(x)
}
let pop_front = {() -> Int in
    guard !queue.isEmpty else { return -1 }
    return queue.removeFirst()
}
let pop_back = {() -> Int in
    guard !queue.isEmpty else { return -1 }
    return queue.removeLast()
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
    switch command[0]{
    case "push_front":
        push_front(Int(command[1])!)
    case "push_back":
        push_back(Int(command[1])!)
    case "pop_front":
        print(pop_front())
    case "pop_back":
        print(pop_back())
    case "size":
        print(size())
    case "empty":
        print(empty())
    case "front":
        print(front())
    case "back":
        print(back())
    default:
        print()
    }
}