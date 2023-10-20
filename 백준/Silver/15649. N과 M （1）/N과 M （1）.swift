let nm = readLine()!.split(separator: " ").map{Int($0)!}
let (n, m) = (nm[0], nm[1])

var stack = [Int]()

func recur() {
    if stack.count == m {
        print(stack.map{String($0)}.joined(separator: " "))
        return
    }
    
    for i in 1...n {
        if !stack.contains(i) {
            stack.append(i)
            recur()
            stack.removeLast()
        }
    }
}

recur()
