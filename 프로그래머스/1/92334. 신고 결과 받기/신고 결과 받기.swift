import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var reportDict = id_list.reduce(into: [:]) {
        $0[$1] = [String]()
    }

    var result = [Int]()
    
    report.forEach {
        var reportDetail = $0.split(separator: " ").map{String($0)}
        if !reportDict[reportDetail[1]]!.contains(reportDetail[0]){
            reportDict[reportDetail[1]]!.append(reportDetail[0])
        }
    }
    
    var resultDict = reportDict.filter{ $0.value.count >= k }.reduce(into: [String:Int]()) {
        for i in $1.value {
            $0[i, default: 0] += 1
        }
    }
    
    for i in 0..<id_list.count {
        if let id = resultDict[id_list[i]] {
            result.append(id)
        } else {
            result.append(0)
        }
    }
    
    return result
}