let nm = readLine()!.split(separator: " ").map{Int($0)!}
let (n,m) = (nm[0],nm[1])

var numberingDict = Dictionary<Int,String>()
var namingDict = Dictionary<String,Int>()

for i in 1...n {
    let pokemon = readLine()!
    numberingDict.updateValue(pokemon, forKey: i)
    namingDict.updateValue(i, forKey: pokemon)
}

var answer = ""
for _ in 1...m {
    let quiz = readLine()!
    if let q = Int(quiz) {
        answer += numberingDict[q]! + "\n"
    } else {
        answer += String(namingDict[quiz]!) + "\n"
    }
}

print(answer)
