let t = Int(readLine()!)!
var count = 0

for _ in 1...t {
    let n = Int(readLine()!)!
    
    recur(n, 0, 0, 0)
    print(count)
    count = 0
}

func recur(_ n: Int, _ one: Int, _ two: Int, _ three: Int) {
    if (one + two + three) == n {
        count += 1
    } else if (one + two + three) > n {
        return
    }
    
    recur(n, one + 1, two, three)
    recur(n, one, two + 2, three)
    recur(n, one, two, three + 3)
}