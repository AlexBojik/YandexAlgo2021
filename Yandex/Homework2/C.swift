func C() {
    let _ = Int(readLine()!)!
    let mas = readLine()!.split(separator: " ")
    let x = Int(readLine()!)!
    var ans = Int(mas.first!)!
    for s in mas {
        let i = Int(s)!
        if abs(x - ans) > abs(i - x) {
            ans = i
        }
    }
    
    print(ans)
}
