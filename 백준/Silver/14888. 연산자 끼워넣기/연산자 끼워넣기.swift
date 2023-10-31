let n = Int(readLine()!)!

let A = readLine()!.split(separator: " ").map{ Int($0)! }

let operators = Array(Array(readLine()!.split(separator: " ").map{Int($0)!}.enumerated()).reduce(into: [String]()){
    switch $1.offset {
    case 0: $0.append(contentsOf: Array(repeating: "+", count: $1.element))
    case 1: $0.append(contentsOf: Array(repeating: "-", count: $1.element))
    case 2: $0.append(contentsOf: Array(repeating: "*", count: $1.element))
    case 3: $0.append(contentsOf: Array(repeating: "/", count: $1.element))
    default: break
    }
}.enumerated())

var results = [Int.min, Int.max]
var operatorStack = [(offset: Int, element: String)]()

func recur(_ index: Int, _ sum: Int) {
    if index == operators.count {
        if sum > results[0] {results[0] = sum}
        if sum < results[1] {results[1] = sum}
        return
    }
    
    for i in 0..<operators.count {
        if !operatorStack.contains(where: { $0.offset == operators[i].offset }) {
            operatorStack.append(operators[i])
            switch operators[i].element{
            case "+": recur(index + 1, sum + A[index + 1])
            case "-": recur(index + 1, sum - A[index + 1])
            case "*": recur(index + 1, sum * A[index + 1])
            case "/": recur(index + 1, sum / A[index + 1])
            default: break
            }
            operatorStack.removeLast()
        }
    }
}

recur(0, A[0])

print("\(results[0])\n\(results[1])")
