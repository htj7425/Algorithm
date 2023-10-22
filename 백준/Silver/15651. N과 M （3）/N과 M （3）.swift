let nm = readLine()!.split(separator: " ").map{Int($0)!}
let (n, m) = (nm[0], nm[1])

var stack = [Int]()
var answer: String = ""

func recur() {
    if stack.count == m {
        answer += "\(stack.map{String($0)}.joined(separator: " "))\n"
        return
    }
    
    for i in 1...n {
        stack.append(i)
        recur()
        stack.removeLast()
    }
}

recur()
print(answer)