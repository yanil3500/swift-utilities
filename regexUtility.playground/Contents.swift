import UIKit
extension String {
    func validate() -> Bool {
        let pattern = "[^0-9a-zA-Z_-]"
        
        do {
            let regex = try NSRegularExpression(pattern: pattern, options: .caseInsensitive)
            
            //Where to start and stop the pattern matching in a string,
            //In this case, the entire string will be checked
            let range = NSRange(location: 0, length: self.characters.count)
            let matches = regex.numberOfMatches(in: self, options: .reportCompletion, range: range)
            
            if matches > 0 {
                return false
            }
            return true
            
        } catch {
            return false
        }
    }
}
