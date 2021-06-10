func A() {
    let mas = readLine()?.split(separator: " ")
    var old = -1
    var t = false
    for i in mas! {
        if old >= Int(i)! {
            t = true
            break
        }
        old = Int(i)!
    }
    if t {
        print("NO")
    } else {
        print("YES")
    }
}
