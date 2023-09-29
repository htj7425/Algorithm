let words = Array(readLine()!)
var count = words.count

for i in 0...words.count - 1 {
    switch words[i] {
    case "=":
        count -= 1
        if (i-2) >= 0 {
            if words[i-1] == "z" && words[i-2] == "d"{
            count -= 1
            }
        }
    case "-":
        count -= 1
    case "j":
        if 0 < i {
            if(words[i-1] == "l" || words[i-1] == "n") {
            count -= 1
            }
        }
    default:
        count += 0
    }
}


print(count)