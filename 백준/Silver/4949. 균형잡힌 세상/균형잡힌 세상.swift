while true {
    let str = readLine()!
    if str == "." {
        break
    }
    var bracketStack = [Character]()
    var answer = "yes"
    
    for i in str {
        if answer == "no" {break}
        switch i {
        case "(":
            bracketStack.append(i)
        case "[":
            bracketStack.append(i)
        case ")":
            if let bracket = bracketStack.popLast() {
                if bracket == "(" {break}
            }
            answer = "no"
        case "]":
            if let bracket = bracketStack.popLast() {
                if bracket == "[" {break}
            }
            answer = "no"
        default:
            break
        }
    }
    
    if bracketStack.count >= 1 {
        print("no")
    } else {
        print(answer)
    }
}