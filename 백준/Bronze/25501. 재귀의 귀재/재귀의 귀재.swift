func isPalindrome(_ str: Array<Character>, _ start: Int, _ end: Int, _ count: Int) -> (check: Int, count: Int) {
    if start >= end {
        return (1, count)
    } else if str[start] != str[end] {
        return (0, count)
    } else {
        return isPalindrome(str, start+1, end-1, count + 1)
    }
}

let t = Int(readLine()!)!

var answer = ""
for _ in 1...t{
    let str = readLine()!
    let result = isPalindrome(Array(str), 0, str.count-1, 1)
    answer += "\(result.check) \(result.count)\n"
}

print(answer)
