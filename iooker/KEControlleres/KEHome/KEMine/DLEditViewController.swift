//
//  DLEditViewController.swift
//  iooker
//
//  Created by JJK on 2024/6/6.
//

import UIKit
import ZKProgressHUD
import SVProgressHUD

class DLEditViewController: UIViewController {

    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var headerImage: UIImageView!
    
    var imgUrl: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let placeholderText = "请输入昵称"
        let attributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor(red: 153/255, green: 153/255, blue: 153/255, alpha: 1.0),
            .font: UIFont.systemFont(ofSize: 14)
        ]
        let attributedPlaceholder = NSAttributedString(string: placeholderText, attributes: attributes)

        nameTF.attributedPlaceholder = attributedPlaceholder
        
        if let name = UserDefaults.standard.object(forKey: "name") as? String {
            nameTF.text = name
        }
        
        if let avatorStr = UserDefaults.standard.object(forKey: "avatorItems") as? String {
            headerImage.sd_setImage(with: URL(string: avatorStr))
        }
    }
    
    @IBAction func dissmiss(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func avatorClick(_ sender: Any) {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = self
        imagePicker.modalPresentationStyle = .fullScreen
        self.present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func confirmClick(_ sender: Any) {
        
        if self.nameTF.text?.count == 0 {
            ZKProgressHUD.showError("昵称不能为空")
            return
        }
        
        updateNickname()
        
    }
    
    func updateNickname() {
        var param = [String: Any]()
        param["nickname"] = self.nameTF.text
        
        if self.imgUrl.count > 0 {
            param["avatar"] = self.imgUrl
        }
        
        param["type"] = AppType
        
        QVCenterBase.shared.post(urlSuffix: "/app/user/updateMy", body: param) { (result: Result<FShow, SImageBaseE>) in
            switch result {
                case .success(let model):
                    
                if model.code == 200 {

                    SVProgressHUD.showSuccess(withStatus: "修改成功")
                    mineInfo()
                    self.dismiss(animated: true)
                    
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
    
    func uploadImage(photoImage: UIImage) {
        QVCenterBase.shared.uploadImage(images: [photoImage]) { result in
            switch result {
            case.success(let pramaters):

                if let dic = pramaters as? String {
                    self.imgUrl = dic
                }
                else {
                    
                }
                
                break
                
            case.failure(_ ):
                
                break
                
            }
        }
    }
    
    
}

extension DLEditViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let pickedImage = info[.originalImage] as? UIImage {
            
            headerImage.image = pickedImage
            
            uploadImage(photoImage: pickedImage)
            
        }
        picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    
}
