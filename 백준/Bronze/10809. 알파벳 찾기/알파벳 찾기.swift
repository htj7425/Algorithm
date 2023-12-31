// 읽어들인 문자열을 Array에 String형태로 변환하여 담아줌
// String형태로 변환해주지 않으면 character형임
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
