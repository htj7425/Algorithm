let nm = readLine()!.split(separator: " ").map{Int($0)!}
let (n, m) = (nm[0], nm[1])

var nSet = Set<String>()
for _ in 1...n {
    nSet.insert(readLine()!)
}

var count = 0
for _ in 1...m {
    if nSet.contains(readLine()!) {
        count += 1
    }
}

print(count)
