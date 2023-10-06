let ab = readLine()!.split(separator: " ").map{Int($0)!}
let (a,b) = (ab[0],ab[1])

var aSet = Set(readLine()!.split(separator: " "))
var bSet = Set(readLine()!.split(separator: " "))

print(aSet.subtracting(bSet).count + bSet.subtracting(aSet).count)
