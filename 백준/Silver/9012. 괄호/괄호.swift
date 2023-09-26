func vpsChecking(vps: [String]) -> Bool {
    var vpsStack = [String]()

    for i in vps {
        if i == "(" {
            vpsStack.append("(")
        } else if i == ")" {
            if vpsStack.popLast() == nil {
                return false
            }
        }
    }
    guard vpsStack.isEmpty else {return false}
    return true
}

let t = Int(readLine()!)!

var answer = ""

for _ in 1...t{
    answer += vpsChecking(vps: Array(readLine()!).map{ String($0) }) ? "YES\n" : "NO\n"
}

print(answer)