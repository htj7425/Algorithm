let n = Int(readLine()!)!
var xArray = readLine()!.split(separator: " ").map{Int($0)!}
let xSortedSet = Set(xArray).sorted()
var xSortedDict = Dictionary<Int,Int>()
for i in 0..<xSortedSet.count {
    xSortedDict.updateValue(i, forKey: xSortedSet[i])
}

var answer: String = ""
for i in 0..<xArray.count {
    answer +=  String(xSortedDict[xArray[i]]!) + " "
}

print(answer)

