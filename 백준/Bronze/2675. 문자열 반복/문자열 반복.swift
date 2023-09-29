let t = Int(readLine()!)!

for _ in 1...t {
    let testCase = readLine()!.split(separator: " ")
    
    var p = ""
    for i in testCase[1] {
        p += String(repeating: i, count: Int(testCase[0])!)
    }
    print(p)
}
