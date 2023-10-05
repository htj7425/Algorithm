let n = Int(readLine()!)!

var member = [[String]]()
for _ in 1...n{
    member.append(readLine()!.split(separator: " ").map{String($0)})
}

member.sort{ Int($0[0])! < Int($1[0])! }

member.forEach{
    print($0.joined(separator: " "))
}
