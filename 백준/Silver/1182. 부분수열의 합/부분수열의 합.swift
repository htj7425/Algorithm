let ns = readLine()!.split(separator: " ").map{Int($0)!}
let (n, s) = (ns[0], ns[1])

let nums = readLine()!.split(separator: " ").map{Int($0)!}

var stack = [Int]()
var count = 0

for i in 1...n {
    stack = [Int]()
    recur(0, i)
}

func recur(_ start: Int,_ endCount: Int) {
    if stack.count == endCount {
        if stack.reduce(0, +) == s { count += 1 }
        return
    }
    
    for i in start..<nums.count {
        stack.append(nums[i])
        recur(i + 1, endCount)
        stack.removeLast()
    }
}

print(count)
