func solution(_ arr:[Int]) -> Double {
    return Double(arr.reduce(into: Int()){ $0 += $1 })/Double(arr.count)
}