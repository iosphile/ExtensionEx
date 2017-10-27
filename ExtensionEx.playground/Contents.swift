import UIKit

extension Collection where Iterator.Element == String {
    
    func averageLength() -> Double{
        var sum = 0
        var count = 0
        
        forEach { (self) in
            
           print(self)
           sum += self.characters.count
            count += 1
        }
        return Double(sum) / Double(count)
    }
}
extension Collection where Iterator.Element == Int{
    
    func numberOf5s() -> Int{
        var counter = 0
        forEach { (self) in
            
            let chars = String(self)
            for char in chars {
                if char == "5"{
                    counter += 1
                }
            }
        }
        print(counter)
        return counter
    }
}

extension Array where Element: Comparable{
    func isSorted() -> Bool{
        
        return self == self.sorted()
    }
}
[8,1,2].isSorted()








