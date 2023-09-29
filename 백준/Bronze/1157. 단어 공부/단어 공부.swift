var alphaDict = Dictionary(Array(readLine()!).map{ (String($0).uppercased(), 1) }, uniquingKeysWith: + )

var resultDict = alphaDict.sorted{ $0.value > $1.value}


if resultDict.count == 1 {
    print(resultDict.first!.key)
} else {
    let first = resultDict.removeFirst()
    let second = resultDict.removeFirst()
    print(first.value != second.value ? first.key : "?")
}
