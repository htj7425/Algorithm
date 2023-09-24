func s(count: Int, A: [Int], B: [Int]) -> Int {
    var answer = 0
    let temp = B.sorted()
    
    for i in 0...count-1 {
        answer += A[i]*temp[count-i-1]
    }
    return answer
}

let n = Int(readLine()!)!
var a = readLine()!.split(separator: " ").map{ Int($0)! }
a.sort()

let b = readLine()!.split(separator: " ").map{ Int($0)! }

print(s(count: n, A: a, B: b))
