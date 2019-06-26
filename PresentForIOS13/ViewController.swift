//
//  ViewController.swift
//  PresentForIOS13
//
//  Created by Shen,Yan(BBTD) on 2019/6/26.
//  Copyright © 2019 Shen,Yan(BBTD). All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true;
        self.title = "A view controller"
    }

    
    /// iOS13 半出: .pageSheet .formSheet .popover .automatic
    /// iOS13 全出: .fullScreen .currentContext .custom .overFullScreen .overCurrentContext
    /// - Parameter sender: 触发器
    @IBAction func presentDetailViewController(_ sender: Any) {
        let detailVC = DetailViewController()
        let navigationVC = UINavigationController(rootViewController: detailVC)
        navigationVC.modalPresentationStyle = .pageSheet
        self.present(navigationVC, animated: true, completion: nil)
    }
    
}

