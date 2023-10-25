let ns = readLine()!.split(separator: " ").map{Int($0)!}
let (n, s) = (ns[0], ns[1])

let nums = readLine()!.split(separator: " ").map{Int($0)!}

var count = 0

for i in 0..<n {
    recur(i, nums[i])
}

func recur(_ start: Int, _ sum: Int) {
    if sum == s {
        count += 1
    }
    
    for i in start+1..<n {
        recur(i, sum + nums[i])
    }
}

print(count)