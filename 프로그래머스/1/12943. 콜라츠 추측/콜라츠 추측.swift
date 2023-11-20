func solution(_ num:Int) -> Int {
    var count = 0
    var n = num
    
    while count <= 500 && n != 1 {
        count += 1
        if n % 2 == 0 { n /= 2 }
        else { n = n * 3 + 1 }
    }
    
    return n != 1 ? -1 : count
}