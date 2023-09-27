for _ in 1...Int(readLine()!)! {
    // 문서의 개수, 순위가 궁금한 문서의 현재 위치
    var testCase = readLine()!.split(separator: " ").map{Int($0)!}
    // 현재 문서들의 중요도
    var printerDocsPriority = readLine()!.split(separator: " ").map{Int($0)!}
    // 우리가 찾을 현재 문서의 위치
    var findDocsIndex = testCase[1]
    
    // 현재 몇 번째 출력인지 카운트 - 찾는 문서의 순서가 됐을 때 카운팅 멈춤
    var printCount = 0
    
    // 정렬된 문서들의 중요도 - 비교 용도
    var sortedPrinterDocsPriority = printerDocsPriority.sorted{ $0 > $1 }
    
    
    //if - PrinterDocsPriority의 첫 번째 요소의 우선순위를 sortedPrinterDocsPriority의 첫번째와 비교해서 우선순위가 가장 높은지 확인
        //if - 첫 번째 요소와 우선순위가 같고 찾고있는 요소라면 return printCount+1
        //else if - PrinterDocsPriority, sortedPrinterDocsPriority 둘 모두에서 removeFirst 후 그에 따른 findDocsIndex의 위치도 이동
    //else if - 우선순위가 제일 높지 않다면 PrinterDocsPriority의 첫 번째 요소를 맨뒤로 보내고 그에 따른 findDocsIndex의 위치도 이동
        
        
    
    while(true) {
        if printerDocsPriority.first! == sortedPrinterDocsPriority.first! {
            if findDocsIndex == 0 {
                print(printCount+1)
                break
            }
            else {
                _ = printerDocsPriority.removeFirst()
                _ = sortedPrinterDocsPriority.removeFirst()
                printCount += 1
                testCase[0] -= 1
                findDocsIndex = (findDocsIndex - 1 + testCase[0])%testCase[0]
            }
        }
        else {
            printerDocsPriority.append(printerDocsPriority.removeFirst())
            findDocsIndex = (findDocsIndex - 1 + testCase[0])%testCase[0]
        }
        
    }
}