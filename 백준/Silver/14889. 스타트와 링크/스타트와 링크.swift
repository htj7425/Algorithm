var n = Int(readLine()!)!
var s = [[Int]]()

for _ in 0..<n {
    s.append(readLine()!.split(separator: " ").map{Int($0)!})
}

var startStack: [Int] = []
var result = Int.max

func teamDistribution(_ index: Int) {
    if startStack.count == n/2 {
        abilityCalc()
        return
    }
    
    for i in index..<n {
        if !startStack.contains(i) {
            startStack.append(i)
            teamDistribution(i + 1)
            startStack.removeLast()
        }
    }
}

func abilityCalc() {
    let link = Array(0..<n).filter{ !startStack.contains($0) }
    var startAbility = 0
    var linkAbility = 0
    
    for i in 0..<startStack.count {
        for j in i+1..<startStack.count {
            startAbility += s[startStack[i]][startStack[j]] + s[startStack[j]][startStack[i]]
        }
    }
    for i in 0..<link.count {
        for j in i+1..<link.count{
            linkAbility += s[link[i]][link[j]] + s[link[j]][link[i]]
        }
    }

    let abilityCompare = abs(startAbility - linkAbility)
    if abilityCompare < result {
        result = abilityCompare
    }
}


teamDistribution(0)

print(result)