func solution(_ n:Int64) -> [Int] {
    return String(n).reversed().reduce(into: [Int]()){
        $0.append(Int(String($1))!)
    }
}