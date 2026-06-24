
import Foundation

import UIKit

class VVChuangHistoryItem: NSObject {
private var start_offset: Double = 0.0
var upgradesArrayNew_tbString: String!




    var title: String?
    var image: UIImage?
    var left: CGFloat = 0.0
    var executeWhileDismissComplete: Bool
    var action: (() -> Void)?
    
    override init() {
        self.executeWhileDismissComplete = false
        super.init()
        
    }
    
}

 class MRFAlamofireTool12 {
    static func min<P: Comparable>(_ p1: P, _ p2: P) -> P {
        return p1 > p2 ? p2 : p1
    }
    
    static func max<P: Comparable>(_ p1: P, _ p2: P) -> P {
        return p1 > p2 ? p1 : p2
    }
}