var gradeSum = 0.0
var majorScoreSum = 0.0

for _ in 1...20 {
    let informationSubject = readLine()!.split(separator: " ")
    
    switch informationSubject[2] {
    case "A+":
        gradeSum += Double(informationSubject[1])!
        majorScoreSum += (4.5 * Double(informationSubject[1])!)
    case "A0":
        gradeSum += Double(informationSubject[1])!
        majorScoreSum += (4.0 * Double(informationSubject[1])!)
    case "B+":
        gradeSum += Double(informationSubject[1])!
        majorScoreSum += (3.5 * Double(informationSubject[1])!)
    case "B0":
        gradeSum += Double(informationSubject[1])!
        majorScoreSum += (3.0 * Double(informationSubject[1])!)
    case "C+":
        gradeSum += Double(informationSubject[1])!
        majorScoreSum += (2.5 * Double(informationSubject[1])!)
    case "C0":
        gradeSum += Double(informationSubject[1])!
        majorScoreSum += (2.0 * Double(informationSubject[1])!)
    case "D+":
        gradeSum += Double(informationSubject[1])!
        majorScoreSum += (1.5 * Double(informationSubject[1])!)
    case "D0":
        gradeSum += Double(informationSubject[1])!
        majorScoreSum += (1.0 * Double(informationSubject[1])!)
    case "F":
        gradeSum += Double(informationSubject[1])!
        majorScoreSum += (0.0 * Double(informationSubject[1])!)
    default:
        break
    }
}

print(majorScoreSum / gradeSum)