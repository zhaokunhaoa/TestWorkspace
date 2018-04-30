//
//  ViewController.swift
//  TestIPadProject
//
//  Created by Zhao Kun on 2018/4/30.
//  Copyright © 2018年 Zhao Kun. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor.red
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        #if DEV
        print("测试环境")
        #else
        print("正式环境")
        #endif
    }

}

