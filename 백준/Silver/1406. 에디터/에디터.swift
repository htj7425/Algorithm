var textStack = Array(readLine()!)
var tempStack: [Character] = []
let m = Int(readLine()!)!

for _ in 1...m {
    let command = readLine()!
    switch command {
    case "L" :
        if !textStack.isEmpty {
            tempStack.append(textStack.removeLast())
        }
    case "D" :
        if !tempStack.isEmpty {
            textStack.append(tempStack.removeLast())
        }
    case "B" :
        if !textStack.isEmpty {
            textStack.removeLast()
        }
    default:
        textStack.append(command.last!)
    }
}

print(String(textStack + tempStack.reversed()))