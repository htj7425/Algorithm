var groupWordCount = Int(readLine()!)!

for _ in 1...groupWordCount {
    let word = Array(readLine()!)
    var temp: Character = " "
    var groupCheck: [Bool] = Array(repeating: false, count: 26)
    
    for j in word {
        let askii = Int(j.asciiValue!) - 97
        if temp != j {
            if groupCheck[askii]{
                groupWordCount -= 1
                break
            } else {
                temp = j
                groupCheck[askii] = true
            }
        } else {
            temp = j
        }
    }
}

print(groupWordCount)
