func B() {
    enum Results: String {
        case CONSTANT = "CONSTANT"
        case ASCENDING = "ASCENDING"
        case WEAKLYASCENDING = "WEAKLY ASCENDING"
        case DESCENDING = "DESCENDING"
        case WEAKLYDESCENDING = "WEAKLY DESCENDING"
        case RANDOM = "RANDOM"
    }

    var res: Results?
    var old = Int(readLine()!)!
    while true {
        let x = Int(readLine()!)!
        if x == -2000000000 {
            if res == nil {
                res = .CONSTANT
            }
            break
        }
        if x == old {
            switch res {
                case nil:
                    res = .CONSTANT
                case .ASCENDING:
                    res = .WEAKLYASCENDING
                case .DESCENDING:
                    res = .WEAKLYDESCENDING
                default:
                    break
            }
        } else if x > old {
            switch res {
                case nil:
                    res = .ASCENDING
                case .CONSTANT:
                    res = .WEAKLYASCENDING
                case .DESCENDING, .WEAKLYDESCENDING:
                    res = .RANDOM
                default:
                    break
            }
        } else if x < old {
            switch res {
                case nil:
                    res = .DESCENDING
                case .CONSTANT:
                    res = .WEAKLYDESCENDING
                case .ASCENDING, .WEAKLYASCENDING:
                    res = .RANDOM
                default:
                    break
            }
        }
        old = x
    }

    print(res!.rawValue)
}
