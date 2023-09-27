func josephus(_ n: Int, _ k: Int) -> [Int]{
    var arr = [Int](1...n)
    var result = [Int]()
    var index = 0
    
    for _ in 0...n-1 {
        index = (index + k - 1)%arr.count
        result.append(arr.remove(at: index))
    }
    
    return result
}

let nkArray = readLine()!.split(separator: " ").map{Int($0)!}

print("<\(josephus(nkArray[0], nkArray[1]).map{ String($0) }.joined(separator: ", "))>")