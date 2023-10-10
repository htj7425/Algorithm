let nk = readLine()!.split(separator: " ").map{Int($0)!}
let (n, k) = (nk[0], nk[1])

var queue = Array(1...n)
var index = 0

var answer = [String]()
for _ in 1...n {
    index = (index + k - 1)%queue.count
    answer.append(String(queue.remove(at: index)))
}

print("<\(answer.joined(separator: ", "))>")