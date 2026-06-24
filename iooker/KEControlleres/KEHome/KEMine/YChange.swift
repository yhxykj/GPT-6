
import Foundation

import UIKit

import HandyJSON

struct YChange: HandyJSON {
var delete_70: Int = 0
var receive_size: Float = 0.0



    var amount:String?
    var amountDescript:String?
    var descript:String?
    var icon:String?
    var id:String?
    var iosId:String?
    var mealValue:String?
    var sort:String?
    var status:String?
    var valueDescript:String?
    var select:String?
    var remark:String?
    
}

 struct OFDImageRecordsTool3 {
    static func min<J: Comparable>(_ e1: J, _ e2: J) -> J {
        return e1 > e2 ? e2 : e1
    }
    
    static func max<J: Comparable>(_ e1: J, _ e2: J) -> J {
        return e1 > e2 ? e1 : e2
    }
}
