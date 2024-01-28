import Foundation

func solution(_ num_list:[Int]) -> Int {
    let a = Decimal(num_list.reduce(1) { $0 * $1 })
    let b = pow(Decimal(num_list.reduce(0, { $0 + $1 })), 2)
    return a > b ? 0 : 1
}