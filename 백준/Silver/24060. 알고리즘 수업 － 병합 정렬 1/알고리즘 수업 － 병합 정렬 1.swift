func merge_sort(_ p:Int, _ r: Int) {
    if p < r {
        let q = (p + r) / 2
        merge_sort(p, q)
        merge_sort(q + 1, r)
        merge(p, q, r)
    }
}

func merge(_ p: Int, _ q:Int, _ r: Int) {
    var i  = p; var j = q + 1; var t = p;
    while i <= q && j <= r {
        if A[i] <= A[j] {
            temp[t] = A[i]
            i += 1
            t += 1
        } else {
            temp[t] = A[j]
            j += 1
            t += 1
        }
    }
    
    while i <= q {
        temp[t] = A[i]
        i += 1
        t += 1
    }
    
    while j <= r {
        temp[t] = A[j]
        j += 1
        t += 1
    }
    
    i = p; t = p
    while i <= r {
        A[i] = temp[t]
        i += 1
        count += 1
        if count == k {
            answer = temp[t]
        }
        t += 1
    }
    
}

var count = 0
var answer: Int?

var nk = readLine()!.split(separator: " ").map{Int($0)!}
var (n,k) = (nk[0], nk[1])

var A = readLine()!.split(separator: " ").map{Int($0)!}
var temp = Array(repeating: 0, count: n)

merge_sort(0, A.count - 1)

if let result = answer {
    print(result)
} else {
    print(-1)
}