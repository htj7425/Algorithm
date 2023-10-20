let nm = readLine()!.split(separator: " ").map{Int($0)!}
let (n,m) = (nm[0], nm[1])

var stack = [Int]()

func recur(_ s: Int) {
    if stack.count == m {
        print(stack.map{String($0)}.joined(separator: " "))
        return
    }
    
    if s <= n {
        for i in s...n {
            if !stack.contains(i) {
                stack.append(i)
                recur(i+1)
                stack.removeLast()
            }
        }
    }
}

recur(1)