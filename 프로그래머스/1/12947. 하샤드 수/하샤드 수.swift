func solution(_ x:Int) -> Bool {
    let splitSum = String(x).reduce(into: Int()) {
        $0 += Int(String($1))!
    }
    return x%splitSum == 0
}