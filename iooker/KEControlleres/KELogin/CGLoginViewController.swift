//
//  CGLoginViewController.swift
//  iooker
//
//  Created by JJK on 2024/6/6.
//

import UIKit
import SVProgressHUD

class CGLoginViewController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        checkloginStatus()
        
    }

    @IBAction func kuaijielogin(_ sender: Any) {
        SVProgressHUD.show()
        CGFastLoginManager.vc_fastLogin(self) { token, resultCode in
            TXCommonHandler.sharedInstance().cancelLoginVC(animated: true)
            self.checkAliYuntoken(token: token)
        }
    }
    
    @IBAction func loginClick(_ sender: Any) {
        let loginVC = CGCScreenMineController()
        navigationController?.pushViewController(loginVC, animated: true)
    }
    
    func checkAliYuntoken(token: String) {
        var param = [String: Any]()
        param["accessToken"] = token
        param["type"] = AppType
        
        SVProgressHUD.show()
        QVCenterBase.shared.post(urlSuffix: "/app/oneClickLogin", body: param) { (result: Result<FShow, SImageBaseE>) in
            switch result {
                case .success(let model):
                    
                if model.code == 200 {

                    SVProgressHUD.showSuccess(withStatus: "登录成功")
                    let first: String = model.data!["token"]!
                    UserDefaults.standard.set(first, forKey: "AccountToken")
                    
                    if let status = UserDefaults.standard.object(forKey: "loginStatus") as? Int {
                        
                        if status != 1 {
                            if let window = UIApplication.shared.windows.first {
                                window.rootViewController = NCKNewsChangeController()
                            }
                            
                            return
                        }
                    }
                    
                    
                    if let goods = UserDefaults.standard.object(forKey: "goods") as? Int {
                        
                        if goods == 1 {
                            if let window = UIApplication.shared.windows.first {
                                window.rootViewController = NCKNewsChangeController()
                            }
                        }
                        else {
                            let pcVC = KEGoodsViewController()
                            self.navigationController?.pushViewController(pcVC, animated: true)
                        }
                        
                    }
                    else {
                        UserDefaults.standard.set(0, forKey: "goods")
                        let pcVC = KEGoodsViewController()
                        self.navigationController?.pushViewController(pcVC, animated: true)
                    }
                    
                    
                }else {
                    SVProgressHUD.showError(withStatus: model.msg)
                }
                    break
                case .failure(_):
                    
                    SVProgressHUD.showError(withStatus: "接口请求错误");
                    break
            }
        }
    }
    
    func checkloginStatus() {
        

        SVProgressHUD.show()
       QVCenterBase.shared.normalPost(urlSuffix: "/app/preference") { result in
           SVProgressHUD.dismiss()
           switch result {
           case.success(let model):

               if let obj = model as? NSDictionary, let code = obj["code"] as? Int {
                   if code == 200 {
                       
                       let status = obj.object(forKey: "data") as! Int
                       UserDefaults.standard.set(status, forKey: "loginStatus")
//                       UserDefaults.standard.set(1, forKey: "loginStatus")
                       
                   }
                   else
                   {

                   }

               }

               break
           case.failure(_):
               SVProgressHUD.showError(withStatus: "接口请求出错")
               break
           }
       }
    }
}
