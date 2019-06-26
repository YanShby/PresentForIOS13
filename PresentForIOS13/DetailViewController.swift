//
//  DetailViewController.swift
//  PresentForIOS13
//
//  Created by Shen,Yan(BBTD) on 2019/6/26.
//  Copyright © 2019 Shen,Yan(BBTD). All rights reserved.
//

import UIKit
import SnapKit

class DetailViewController: UIViewController {
    
    lazy var someView = UIView()
    lazy var dismissBtn = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.systemPink
        self.title = "Presented Detail View Controller"
        // Do any additional setup after loading the view.
        
        self.dismissBtn.setTitle("dismiss", for: .normal)
        self.dismissBtn.setTitleColor(.secondaryLabel, for: .normal)
        self.dismissBtn.addTarget(self, action: #selector(dismiss(_:)), for: .touchUpInside)
        self.view.addSubview(self.dismissBtn)
        
        self.dismissBtn.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
        }
    }
    
    @IBAction func dismiss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
