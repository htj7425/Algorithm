let n = Int(readLine()!)!
var nArray = Array(String(n)).map{ Int(String($0))! }

var answer = Int.max

for i in (1...n).reversed() {
    let iArray = Array(String(i)).map{ Int(String($0))! }
    if n == (iArray.reduce(0, +) + i) {
        if answer > i {
            answer = i
        }
    }
}

if answer == Int.max {
    print(0)
} else {
    print(answer)
}
