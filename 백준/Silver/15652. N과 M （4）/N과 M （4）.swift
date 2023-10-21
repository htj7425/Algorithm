// N과 M (4)

let nm = readLine()!.split(separator: " ").map{Int($0)!}
let (n, m) = (nm[0], nm[1])

var stack = [Int]()

func recur(_ start: Int) {
    if stack.count == m {
        print(stack.map{String($0)}.joined(separator: " "))
        return
    }
    
    if start <= n {
        for i in start...n {
            stack.append(i)
            recur(i)
            stack.removeLast()
        }
    }
}

recur(1)