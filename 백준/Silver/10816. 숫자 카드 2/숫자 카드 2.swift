var mDict = Dictionary<String, Int>()

let n = Int(readLine()!)!
readLine()!.split(separator: " ").forEach{
    let key = String($0)
    if mDict[key] == nil {
        mDict.updateValue(1, forKey: key)
    } else {
        mDict[key]? += 1
    }
}

let m = Int(readLine()!)!
let mArray = readLine()!.split(separator: " ").map{ String($0) }

mArray.forEach {
    let temp: Int? = mDict[$0]
    print("\(temp != nil ? temp! : 0)", terminator: " ")
}