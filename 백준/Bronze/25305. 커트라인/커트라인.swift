let nkArray = readLine()!.split(separator: " ").map{ Int($0)! }
let scores = readLine()!.split(separator: " ").map{ Int($0)! }.sorted{ $0 > $1}

print(scores[nkArray[1]-1])
