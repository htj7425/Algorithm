import Foundation

func solution(_ num_list:[Int]) -> Int {
    var index = num_list.firstIndex(where: {$0 < 0})
    return index != nil ? index! : -1
}