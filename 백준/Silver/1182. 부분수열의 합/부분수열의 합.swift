let ns = readLine()!.split(separator: " ").map{Int($0)!}
let (n, s) = (ns[0], ns[1])

let nums = readLine()!.split(separator: " ").map{Int($0)!}

var stack = [Int]()
var count = 0

for i in 1...n {
    stack = [Int]()
    recur(0, i, 0)
}

func recur(_ start: Int,_ endCount: Int, _ sum: Int) {
    if stack.count == endCount {
        if sum == s { count += 1 }
        return
    }
    
    for i in start..<nums.count {
        stack.append(nums[i])
        recur(i + 1, endCount, sum + nums[i])
        stack.removeLast()
    }
}

print(count)