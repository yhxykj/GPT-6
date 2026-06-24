//
//  KEGoodsViewController.swift
//  iooker
//
//  Created by JJK on 2024/6/6.
//

import UIKit

class KEGoodsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }

    @IBAction func enterClick(_ sender: Any) {
        let pcVC = VCPictureViewController()
        navigationController?.pushViewController(pcVC, animated: true)
    }
    
    @IBAction func closeClick(_ sender: Any) {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = NCKNewsChangeController()
        }
    }
    
}
