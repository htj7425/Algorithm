
var stack = [Int]()
var answer: String = ""
var nums = [Int]()

while true {
    nums = readLine()!.split(separator: " ").map{Int($0)!}
    if nums[0] == 0 {
        break
    }
    
    stack = [Int]()
    answer = ""
    recur(1)
    print(answer)
}

func recur(_ start: Int) {
    if stack.count == 6 {
        answer += "\(stack.map{String($0)}.joined(separator: " "))\n"
        return
    }
    
    for i in start..<nums.count {
        if !stack.contains(nums[i]){
            stack.append(nums[i])
            recur(i+1)
            stack.removeLast()
        }
    }
}

