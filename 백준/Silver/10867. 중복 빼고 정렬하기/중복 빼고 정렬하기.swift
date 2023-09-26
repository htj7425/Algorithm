let n = Int(readLine()!)!
var array = Array(Set(readLine()!.split(separator: " ").map{ Int($0)! }))

print(array.sorted().map{ String($0) }.joined(separator: " "))
