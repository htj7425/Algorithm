import Foundation

final class FileIO {
    private var buffer:[UInt8]
    private var index: Int
    
    init(fileHandle: FileHandle = FileHandle.standardInput) {
        buffer = Array(fileHandle.readDataToEndOfFile())+[UInt8(0)] // 인덱스 범위 넘어가는 것 방지
        index = 0
    }
    
    @inline(__always) private func read() -> UInt8 {
        defer { index += 1 }
        
        return buffer.withUnsafeBufferPointer { $0[index] }
    }
    
    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()
        var isPositive = true
        
        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        if now == 45{ isPositive.toggle(); now = read() } // 음수 처리
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }
        
        return sum * (isPositive ? 1:-1)
    }
    
    @inline(__always) func readString() -> Int {
        var str = 0
        var now = read()
        
        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        
        while now != 10
                && now != 32 && now != 0 {
            str += Int(now)
            now = read()
        }
        
        return str
    }
}

let file = FileIO()

let n = file.readInt()

var A = [Int]()
for _ in 1...n {
    A.append(file.readInt())
}

var B = [Int]()
for i in 0..<n {
    if A[i] == 0 {
        B.append(file.readInt())
    } else {
        _ = file.readInt()
    }
}

B = B.reversed()
var m = file.readInt()
var C = [Int]()

var moreCount = m - B.count

for _ in 1...m {
    if moreCount > 0 {
        B.append(file.readInt())
        moreCount -= 1
    } else {
        _ = file.readInt()
    }
}

var answer = ""
for i in 0..<m {
    answer += "\(B[i]) "
}
print(answer)
