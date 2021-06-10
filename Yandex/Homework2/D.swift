func D() {
    let mas = readLine()!.split(separator: " ")
    let n = mas.count
    var ans = 0
    if n > 1 {
        for i in 1..<n - 1 {
            if Int(mas[i])! > Int(mas[i - 1])! && Int(mas[i])! > Int(mas[i + 1])! {
                ans += 1
            }
        }
    }
    
    print(ans)
}
