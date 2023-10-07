var sSet = Set<String>()

var s = Array(readLine()!).map{String($0)}

for i in 0..<s.count {
    var temp = ""
    for j in i..<s.count {
        temp += s[j]
        sSet.insert(temp)
    }
}

print(sSet.count)
