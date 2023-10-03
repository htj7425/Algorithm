let nums = readLine()!.split(separator: " ").map{ Int($0)! }
let (a,b,c,d,e,f) = (nums[0], nums[1], nums[2], nums[3], nums[4], nums[5])

var answer = [0, 0]
for i in -999...999 {
    for j in -999...999 {
        if (a*i + b*j == c) && (d*i + e*j == f) {
            answer[0] = i
            answer[1] = j
        }
    }
}

print(answer.map{ String($0) }.joined(separator: " "))
