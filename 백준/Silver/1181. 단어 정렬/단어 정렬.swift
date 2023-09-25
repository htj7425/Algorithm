let n = Int(readLine()!)!

var words: [String] = []

for _ in 1...n{
    words.append(readLine()!)
}

//Set을 통해 중복되는 단어를 제거
words = Array(Set(words).sorted{ $0 < $1 }.sorted{ $0.count < $1.count })
print(words.joined(separator: "\n"))

