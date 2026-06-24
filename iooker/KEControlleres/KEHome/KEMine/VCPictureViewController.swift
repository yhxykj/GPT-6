//
//  VCPictureViewController.swift
//  iooker
//
//  Created by JJK on 2024/6/6.
//

import UIKit
import ZKProgressHUD

class VCPictureViewController: UIViewController {

    @IBOutlet weak var pictureImg: UIImageView!
    
    var isSuccess: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = URL(string: "itms-apps://itunes.apple.com/app/6503435807?action=write-review") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
        
    }
    
    @IBAction func back(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func tapPictureClick(_ sender: Any) {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = self
        imagePicker.modalPresentationStyle = .fullScreen
        self.present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func confirmClick(_ sender: Any) {
        
        if self.isSuccess == true {
            ZKProgressHUD.show()
            self.perform(#selector(loadingShow), with: self, afterDelay: 1.80)
        }
        else {
            ZKProgressHUD.showError("请添加图片")
        }
        
    }
    
    @objc func loadingShow() {
        
        if let window = UIApplication.shared.windows.first {
            UserDefaults.standard.set(1, forKey: "goods")
            window.rootViewController = NCKNewsChangeController()
        }
    }
    
}

extension VCPictureViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let pickedImage = info[.originalImage] as? UIImage {
            
            self.pictureImg.image = pickedImage
            self.isSuccess = true
        }
        picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    
}
