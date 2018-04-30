//
//  HomeViewController.swift
//  TestProject
//
//  Created by Zhao Kun on 2018/4/30.
//  Copyright © 2018年 Zhao Kun. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpSubviews()
    }

    func setUpSubviews() {
        let close = UIButton(type: .custom)
        close.frame = CGRect(x: 20, y: 40, width: 60, height: 40)
        close.backgroundColor = UIColor.red
        close.setTitle("close", for: .normal)
        close.addTarget(self, action: #selector(clickButton(sender:)), for: .touchUpInside)
        view.addSubview(close)
    }
    
    @objc func clickButton(sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
