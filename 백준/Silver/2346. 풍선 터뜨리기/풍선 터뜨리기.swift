let n = Int(readLine()!)!

var ballon = Array(readLine()!.split(separator: " ").map{Int($0)!}.enumerated())
var orderArray = Array<(offset: Int, element: Int)>()

var index = 0
var move = 0
while true {
    orderArray.append(ballon[index])
    ballon[index].element = 0
    move = orderArray.last!.element
    
    if orderArray.count == n {
        break
    }
    
    //move 만큼 index 이동
    while(move != 0) {
        if move > 0 {
            index += 1
            move -= 1
            if index >= ballon.count {index = 0}
            if ballon[index].element == 0 {
                move += 1
            }
        } else if move < 0 {
            index -= 1
            move += 1
            if index < 0 { index = ballon.count - 1}
            if ballon[index].element == 0 {
                move -= 1
            }
        }
    }
}

orderArray.forEach{
    print($0.offset + 1, terminator: " ")
}