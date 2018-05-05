//
//  DismissAnimator.swift
//  ZKBase
//
//  Created by Zhao Kun on 2018/4/30.
//  Copyright © 2018年 Zhao Kun. All rights reserved.
//

import UIKit

open class DismissAnimator: NSObject {

    
}

extension DismissAnimator: UIViewControllerAnimatedTransitioning {
    public func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.3
    }
    
    public func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        guard let fromVC = transitionContext.viewController(forKey: .from) else { return }
        guard let toVC = transitionContext.viewController(forKey: .to) else { return }
        let containerView = transitionContext.containerView
        containerView.backgroundColor = UIColor.blue
        
        let screenWidth = UIScreen.main.bounds.width
        let screenHeight = UIScreen.main.bounds.height

        var fromRect = fromVC.view.frame
        var toRect = toVC.view.frame
        
        containerView.addSubview(toVC.view)

        fromVC.view.frame = UIScreen.main.bounds

        toRect.origin.x = screenWidth
        toRect.origin.y = 0
        toVC.view.frame = toRect
        
        toRect.origin.x = 0
        toRect.origin.y = 0

        fromRect.origin.x = -screenWidth
//        fromRect.origin.y = -screenHeight

        UIView.animate(withDuration: transitionDuration(using: transitionContext), animations: {
            fromVC.view.frame = fromRect
            toVC.view.frame = toRect
        }) { (finished) in
            transitionContext.completeTransition(!transitionContext.transitionWasCancelled)
        }
        
        
        
    }

}
