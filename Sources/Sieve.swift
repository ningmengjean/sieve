//Solution goes in Sources
import Foundation

class Sieve {
    var sieve: Int
    init(_ sieve: Int) {
        self.sieve = sieve
    }
    
    var primes: [Int] {
        
        var dic = [Int: Bool]()
        (2...sieve).forEach {
            dic[$0] = false
        }
        
        for i in 2..<(sieve+1) {
            var multipler = 2
            if dic[i] == false {
                while ( i * multipler <= sieve ){
                    dic[i * multipler] = true
                    multipler += 1
                }
            }
        }
        let arr = dic.filter{$0.value == false}
        return arr.map{$0.key}.sorted()
    }
}
