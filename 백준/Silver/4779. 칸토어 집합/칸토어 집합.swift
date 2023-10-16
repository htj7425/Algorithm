import Foundation

func cantor(_ flag: Bool ,_ i: Int, _ j: Int, _ k: Int, _ o: Int) {
    if flag {
        for x in i..<o {
            str[x] = " "
        }
    } else {
        if (o - i) > 3 {
            cantor(false, i, i+(j-i)/3, i+(j-i)/3*2, j)
            cantor(true, j, 0, 0, k)
            cantor(false, k, k+(o-k)/3, k+(o-k)/3*2, o)
        } else if (o - i) == 3 {
            str[i] = "-"
            str[i+1] = " "
            str[i+2] = "-"
        }
    }
}



var answer = ""
var str = [Character]()

while let n = readLine() {
    str = Array(repeating: "-", count: Int(pow(3.0, Float(n)!)))
    
    cantor(false ,0, str.count/3, str.count/3*2, str.count)
    answer += "\(str.map{String($0)}.joined())\n"
}

print(answer)