let n = Int(readLine()!)!
let entleavDict = ["enter" : true, "leave": false]

var slaveDict = Dictionary<String,Bool>()
for _ in 1...n {
    let slave = readLine()!.split(separator: " ").map{String($0)}
    let entleav = entleavDict[slave[1]]!
    if entleav {
        slaveDict.updateValue(entleav, forKey: slave[0])
    } else {
        slaveDict.removeValue(forKey: slave[0])
    }
}

slaveDict.sorted{ $0.key > $1.key }.forEach{
    print($0.key)
}
