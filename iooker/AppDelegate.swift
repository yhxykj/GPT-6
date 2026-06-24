
import Foundation

import UIKit
import IQKeyboardManager
import Alamofire
//import TalkingData

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
private var bangExecuteYinStr: String?
private var currentPadding: Float = 0.0
private var activity_max: Double = 0.0
var headersTaskNormalString: String!




    var window: UIWindow?

    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
       var statuslabel8: Float = 0.0
    var setstatek: Int = 3
   while (5 > (4 - setstatek)) {
      setstatek &= 1
      break
   }

   for _ in 0 ..< 3 {
       var datas: String! = String(cString: [97,117,120,0], encoding: .utf8)!
          var firstP: Double = 4.0
          var speedz: Int = 0
          var launchf: Double = 5.0
         datas.append("\(Int(launchf))")
         firstP += Double(2)
         speedz %= CVerticalTool10.max(1, 4)
         launchf -= Double(Int(firstP))
      repeat {
          var pickerg: Double = 5.0
          var webD: String! = String(cString: [98,110,104,101,120,0], encoding: .utf8)!
          var insertV: [String: Any]! = [String(cString: [108,97,110,100,109,105,110,101,115,0], encoding: .utf8)!:692, String(cString: [97,100,116,115,0], encoding: .utf8)!:561, String(cString: [99,108,101,97,114,115,0], encoding: .utf8)!:67]
         datas = "\(2)"
         pickerg /= CVerticalTool10.max(Double(Int(pickerg) | 3), 5)
         webD.append("\(insertV.values.count % (CVerticalTool10.max(3, 4)))")
         insertV[webD] = ((String(cString:[111,0], encoding: .utf8)!) == webD ? webD.count : Int(pickerg))
         if datas == (String(cString:[109,120,106,104,112,97,95,115,105,0], encoding: .utf8)!) {
            break
         }
      } while (5 > datas.count) && (datas == (String(cString:[109,120,106,104,112,97,95,115,105,0], encoding: .utf8)!))
          var pricelabelQ: [Any]! = [477, 137, 405]
          var yloadingM: [Any]! = [6740.0]
          var recognizerR: String! = String(cString: [107,100,102,0], encoding: .utf8)!
         datas = "\(datas.count)"
         pricelabelQ.append(pricelabelQ.count)
         yloadingM.append(3 ^ yloadingM.count)
         recognizerR.append("\(1)")
      statuslabel8 -= Float(datas.count - setstatek)
   }
        
        detectNetworkStatus()
   while (setstatek > 2) {
      setstatek -= Int(statuslabel8)
      break
   }
        
        IQKeyboardManager.shared().isEnabled = true
       var navgationU: Double = 5.0
       var ringbufferF: Int = 2
       var pauseQ: String! = String(cString: [116,109,112,0], encoding: .utf8)!
       var layouta: Bool = true
       var shou1: Bool = false
       var fontQ: Double = 5.0
         navgationU += Double(Int(navgationU))
          var leftz: String! = String(cString: [107,105,108,111,98,121,116,101,0], encoding: .utf8)!
          var callA: [String: Any]! = [String(cString: [117,97,110,0], encoding: .utf8)!:String(cString: [110,101,120,116,104,111,112,0], encoding: .utf8)!, String(cString: [109,97,108,108,111,99,122,0], encoding: .utf8)!:String(cString: [104,97,110,110,105,110,103,0], encoding: .utf8)!]
         ringbufferF &= Int(fontQ) | 2
         leftz = "\(((String(cString:[102,0], encoding: .utf8)!) == leftz ? leftz.count : callA.keys.count))"
         callA = ["\(callA.keys.count)": callA.keys.count ^ 2]
      repeat {
         ringbufferF += 3 << (CVerticalTool10.min(labs(Int(fontQ)), 5))
         if ringbufferF == 2861372 {
            break
         }
      } while (!shou1) && (ringbufferF == 2861372)
       var placeZ: String! = String(cString: [102,105,116,116,101,100,0], encoding: .utf8)!
       var z_centerk: String! = String(cString: [101,120,101,99,117,116,101,0], encoding: .utf8)!
       var slideri: Bool = false
       var primeZ: Bool = false
      if !shou1 {
         shou1 = !placeZ.hasSuffix("\(fontQ)")
      }
      if (ringbufferF | z_centerk.count) == 3 && 4 == (ringbufferF | 3) {
         z_centerk.append("\(placeZ.count)")
      }
      setstatek >>= CVerticalTool10.min(labs(setstatek), 3)
        IQKeyboardManager.shared().shouldResignOnTouchOutside = true

        CGKeTookingManager.shareTool(getAccountNumberIdentifier()!)
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        
        if let first = UserDefaults.standard.object(forKey: "first") as? Int {
            if first == 1 {

                if UserDefaults.standard.object(forKey: "AccountToken") == nil {
                    window?.rootViewController = UINavigationController(rootViewController: CGLoginViewController())
                }
                else {
                    if let goods = UserDefaults.standard.object(forKey: "goods") as? Int {
                        
                        if goods == 1 {
                            window?.rootViewController = NCKNewsChangeController()
                        }
                        else {
                            window?.rootViewController = UINavigationController(rootViewController: VCPictureViewController())
                        }
                        
                    }
                    else {
                        window?.rootViewController = NCKNewsChangeController()
                    }
                    
                }

            }
            else {
                window?.rootViewController = UINavigationController(rootViewController: OKEditScreenController())
            }
        }
        else {
            window?.rootViewController = UINavigationController(rootViewController: OKEditScreenController())
        }
        
        window?.makeKeyAndVisible()
        
        TXCommonHandler.sharedInstance().setAuthSDKInfo("Tb8W0f+kC8QViIf+NufN5b17L2eQaDriood19IYsJ2Ct/IDJc50uHPCBpbpomDXHoSWoIEvabDPoWOOoYrgX6JIhJEtfClgkUwUBVcgQ9o+cUbnlv3SdzS705JAAZxNVkdP1Rmv1Z0qEC0c1Gr26h2ENMPYcFq9z/WyrnaSLDl3VSMgPtyhEq/x2JgRvxDlg0O2U91ZN2DPA6T/UROzUC4X4cXjrFoR2lq7qV+en5TXxhvaGkHFfvTsWzDwx9eyH") { resultDic in

            print("设置秘钥结果：\(resultDic)")
        }
        
        
        return true
    }

    
    func applicationDidEnterBackground(_ application: UIApplication) {
       var menug: [Any]! = [851, 479, 261]
    var controllC: String! = String(cString: [97,102,116,101,114,108,105,102,101,0], encoding: .utf8)!
   repeat {
      menug = [controllC.count]
      if 2639038 == menug.count {
         break
      }
   } while (2639038 == menug.count) && (4 > menug.count)
   repeat {
       var findu: Bool = false
          var purchasedl: Float = 0.0
         findu = purchasedl <= 44.5
      if !findu {
          var endo: Double = 2.0
          var otherF: String! = String(cString: [115,110,97,112,115,104,111,116,0], encoding: .utf8)!
          var currento: [Any]! = [5683.0]
         findu = endo == 5.6 && findu
         endo *= Double(currento.count ^ 2)
         otherF = "\(((String(cString:[67,0], encoding: .utf8)!) == otherF ? currento.count : otherF.count))"
      }
       var changeL: String! = String(cString: [99,105,110,101,112,97,107,0], encoding: .utf8)!
      menug.append(controllC.count)
      if menug.count == 1678905 {
         break
      }
   } while (menug.count == 1678905) && (menug.count <= 3)
      controllC = "\(menug.count)"

    }

@discardableResult
 func objectDetaillabelInitializeFail(editPermis: Double) -> [String: Any]! {
    var nicknameF: String! = String(cString: [112,107,112,107,101,121,0], encoding: .utf8)!
    var aids: Bool = false
       var sousuou: Double = 0.0
       var playT: Int = 5
          var numI: [String: Any]! = [String(cString: [115,116,97,103,101,0], encoding: .utf8)!:String(cString: [99,111,110,110,101,99,116,115,95,120,95,52,54,0], encoding: .utf8)!, String(cString: [109,112,106,112,101,103,0], encoding: .utf8)!:String(cString: [109,97,115,107,0], encoding: .utf8)!, String(cString: [115,112,97,119,110,0], encoding: .utf8)!:String(cString: [117,121,118,121,116,111,121,117,118,0], encoding: .utf8)!]
         playT /= CVerticalTool10.max(1, 3 ^ playT)
         numI["\(numI.count)"] = 3
         playT >>= CVerticalTool10.min(5, labs(playT * Int(sousuou)))
         sousuou -= Double(3 * Int(sousuou))
          var eventH: String! = String(cString: [99,104,97,114,115,0], encoding: .utf8)!
          var z_views: Int = 1
         sousuou -= Double(playT ^ z_views)
         eventH.append("\(3)")
         z_views ^= 1
          var userdataD: String! = String(cString: [117,116,102,108,101,110,0], encoding: .utf8)!
         playT ^= playT * userdataD.count
         sousuou *= Double(Int(sousuou))
      aids = !aids && playT > 1
   repeat {
      aids = !aids
      if aids ? !aids : aids {
         break
      }
   } while (5 <= nicknameF.count) && (aids ? !aids : aids)
   for _ in 0 ..< 3 {
      nicknameF.append("\(2)")
   }
       var aida9: [Any]! = [257, 414]
       var primez: Float = 5.0
       var checkG: Bool = false
         checkG = aida9.count <= 79
       var decibelJ: Float = 1.0
       var playJ: Float = 0.0
         checkG = decibelJ > 65.15
       var lineg: [Any]! = [489, 488]
       var zoom1: [Any]! = [552, 702, 634]
         playJ += Float(zoom1.count | 1)
      if 5.58 <= decibelJ {
         checkG = !checkG
      }
      while (3.53 < (2.38 * playJ)) {
          var cleanC: String! = String(cString: [110,97,116,105,111,110,97,108,0], encoding: .utf8)!
          var presentd: [String: Any]! = [String(cString: [112,108,97,99,101,109,97,114,107,0], encoding: .utf8)!:391, String(cString: [117,115,101,0], encoding: .utf8)!:547]
          var toplayoutC: Bool = true
         playJ += Float(Int(decibelJ) >> (CVerticalTool10.min(5, labs(3))))
         cleanC = "\(presentd.keys.count)"
         presentd["\(toplayoutC)"] = 3 | presentd.keys.count
         break
      }
       var not_6A: String! = String(cString: [105,110,116,101,103,114,97,116,105,111,110,0], encoding: .utf8)!
          var styleo: Float = 2.0
          var browserc: Float = 1.0
          var showx: [Any]! = [892, 261]
         lineg.append(1 << (CVerticalTool10.min(4, aida9.count)))
         styleo += Float(Int(styleo) << (CVerticalTool10.min(showx.count, 2)))
         browserc /= CVerticalTool10.max(Float(Int(browserc)), 1)
         showx = [2 - Int(browserc)]
      aids = checkG
      primez += Float(Int(primez))
    var mkvmuxertypesReturning :[String: Any]! = [String: Any]()

    return mkvmuxertypesReturning

}





    
    func detectNetworkStatus()  {

             objectDetaillabelInitializeFail(editPermis:5020.0)


       var weixinlabelC: Bool = true
    var engineZ: Double = 4.0
    var executek: Float = 1.0
      engineZ *= Double(Int(executek))
   for _ in 0 ..< 3 {
       var refreshX: [String: Any]! = [String(cString: [105,110,116,101,103,114,97,116,101,100,0], encoding: .utf8)!:159, String(cString: [110,116,105,108,101,0], encoding: .utf8)!:82, String(cString: [100,101,114,105,118,97,116,105,118,101,0], encoding: .utf8)!:27]
       var detection1: Bool = true
       var rmblabela: Double = 1.0
       var call7: Bool = false
       var playq: Float = 1.0
      for _ in 0 ..< 3 {
         call7 = (refreshX.count + Int(rmblabela)) <= 16
      }
         rmblabela /= CVerticalTool10.max((Double(Int(playq) & (detection1 ? 2 : 5))), 3)
      while ((playq * Float(rmblabela)) < 5.99 || 5.99 < (Double(playq) * rmblabela)) {
          var images1: String! = String(cString: [117,110,105,100,101,110,116,105,102,105,101,100,0], encoding: .utf8)!
          var openr: String! = String(cString: [109,118,99,111,117,110,116,0], encoding: .utf8)!
          var didP: Bool = false
          var r_objectm: [String: Any]! = [String(cString: [97,114,98,105,116,101,114,0], encoding: .utf8)!:String(cString: [115,113,117,97,114,101,115,0], encoding: .utf8)!, String(cString: [100,116,111,97,0], encoding: .utf8)!:String(cString: [114,101,115,97,109,112,108,101,0], encoding: .utf8)!, String(cString: [100,101,115,105,114,101,100,0], encoding: .utf8)!:String(cString: [110,97,118,105,103,97,116,101,100,0], encoding: .utf8)!]
         playq += (Float((didP ? 4 : 5) / 3))
         images1.append("\(2)")
         openr.append("\(r_objectm.values.count * images1.count)")
         didP = openr.count < 61 && (String(cString:[99,0], encoding: .utf8)!) == images1
         r_objectm[images1] = (images1 == (String(cString:[119,0], encoding: .utf8)!) ? images1.count : openr.count)
         break
      }
         rmblabela += Double(Int(rmblabela) + 1)
      repeat {
          var sections3: Float = 3.0
         playq *= Float(3 % (CVerticalTool10.max(10, Int(rmblabela))))
         sections3 *= Float(Int(sections3))
         if 4587517.0 == playq {
            break
         }
      } while (playq < 5.99) && (4587517.0 == playq)
       var souR: [Any]! = [452, 293, 311]
       var replacel: [Any]! = [String(cString: [99,97,112,105,116,97,108,115,0], encoding: .utf8)!, String(cString: [108,111,99,97,116,105,111,110,115,0], encoding: .utf8)!, String(cString: [101,110,117,109,101,114,97,116,101,0], encoding: .utf8)!]
      if souR.count >= 4 {
          var fontI: Int = 2
          var showb: Bool = false
          var launchH: String! = String(cString: [111,110,97,118,99,0], encoding: .utf8)!
          var abroadcastb: String! = String(cString: [100,101,113,117,97,110,116,105,122,101,0], encoding: .utf8)!
          var loginI: String! = String(cString: [116,117,112,108,101,115,0], encoding: .utf8)!
         souR = [1]
         fontI += (abroadcastb == (String(cString:[114,0], encoding: .utf8)!) ? (showb ? 1 : 3) : abroadcastb.count)
         showb = (launchH.count + abroadcastb.count) >= 59
         launchH = "\(((showb ? 3 : 1)))"
         loginI = "\(((showb ? 5 : 1) * 1))"
      }
          var rowsg: Bool = false
          var apass_: Float = 0.0
          var topj: Bool = true
         replacel = [Int(rmblabela) | refreshX.values.count]
         rowsg = rowsg && 100.77 < apass_
         apass_ *= (Float(Int(apass_) + (rowsg ? 2 : 1)))
         topj = topj && !rowsg
      if !refreshX.keys.contains("\(playq)") {
         playq /= CVerticalTool10.max(3, Float(Int(playq)))
      }
          var d_imageJ: Double = 5.0
          var orderS: String! = String(cString: [116,114,101,101,99,111,100,101,114,0], encoding: .utf8)!
         call7 = detection1
         d_imageJ /= CVerticalTool10.max(Double(3 >> (CVerticalTool10.min(3, orderS.count))), 1)
         orderS.append("\(((String(cString:[80,0], encoding: .utf8)!) == orderS ? orderS.count : Int(d_imageJ)))")
         call7 = 55 < replacel.count
         call7 = refreshX.values.count < 40
         souR.append(refreshX.keys.count)
          var browserm: Float = 1.0
          var emptyf: String! = String(cString: [102,105,108,101,115,0], encoding: .utf8)!
          var closeI: Float = 3.0
         refreshX["\(souR.count)"] = replacel.count + souR.count
         browserm += Float(emptyf.count)
         emptyf.append("\(3)")
         closeI -= Float(2)
      repeat {
         souR = [3]
         if 3333467 == souR.count {
            break
         }
      } while (3333467 == souR.count) && (Int(playq) > souR.count)
      engineZ -= Double(2)
   }

   if 3.34 == (engineZ / 1.19) || (executek / 1.19) == 3.56 {
      engineZ += (Double(Int(executek) * (weixinlabelC ? 3 : 4)))
   }
   if executek == 2.25 {
       var r_centerv: [Any]! = [539, 289]
          var firstc: Double = 0.0
         r_centerv.append(r_centerv.count << (CVerticalTool10.min(1, labs(Int(firstc)))))
          var presentN: Float = 5.0
         r_centerv.append(1 * Int(presentN))
         r_centerv.append(2)
      executek -= Float(1 | Int(engineZ))
   }
        let b_image: NetworkReachabilityManager?
        b_image = NetworkReachabilityManager.default
        b_image?.startListening(onUpdatePerforming: { _ in })
  
      engineZ += Double(3 - Int(engineZ))
      weixinlabelC = !weixinlabelC || engineZ >= 77.79
    }

}


 struct CVerticalTool10 {
    static func min<Y: Comparable>(_ k1: Y, _ k2: Y) -> Y {
        return k1 > k2 ? k2 : k1
    }
    
    static func max<Y: Comparable>(_ k1: Y, _ k2: Y) -> Y {
        return k1 > k2 ? k1 : k2
    }
}
