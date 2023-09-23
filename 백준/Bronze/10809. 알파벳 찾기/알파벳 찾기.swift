let s = Array(readLine()!).map{ String($0) }

// 문자의 포함 여부를 빠른 속도로 파악하기 위해 Set에 문자 배열을 옮겨 담았음
let searchString = Set(s.map { $0 })

for Askii in 97...122{
    //ASKII Code를 문자열로 변환
    let temp = String(UnicodeScalar(Askii)!)
    if searchString.contains(temp) {
        print(s.firstIndex(of: temp)!, terminator: " ")
    } else {
        print(-1,terminator: " ")
    }
    
}