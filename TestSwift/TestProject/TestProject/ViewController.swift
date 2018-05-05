//
//  ViewController.swift
//  TestProject
//
//  Created by Zhao Kun on 2018/4/30.
//  Copyright © 2018年 Zhao Kun. All rights reserved.
//

import UIKit
import ZKBase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor.green
        
        #if DEV
            print("测试环境")
        #else
            print("正式环境")
        #endif
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let home = HomeViewController()
        home.transitioningDelegate = self
        present(home, animated: true, completion: nil)
    }
    
}

extension ViewController: UIViewControllerTransitioningDelegate {
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return DismissAnimator()
    }
}
