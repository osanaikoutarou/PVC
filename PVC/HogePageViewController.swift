//
//  HogePageViewController.swift
//  PVC
//
//  Created by osanai on 2018/10/23.
//  Copyright © 2018年 osanai. All rights reserved.
//

import UIKit

class HogePageViewController: UIPageViewController {

    var vcs:[UINavigationController] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for i in 0..<10 {
            let nav = storyboard?.instantiateViewController(withIdentifier: "NavViewController") as! UINavigationController
            let vc = nav.topViewController as! ViewController
            
            vc.number = i
            vcs.append(nav)
        }
        
        setViewControllers([vcs.first!],
                           direction: .forward,
                           animated: true,
                           completion: nil)
        self.dataSource = self
    }

}

extension HogePageViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let i = ((viewController as! UINavigationController).topViewController as! ViewController).number
        if i > 9 {
            return nil
        }
        else if i < 1 {
            return nil
        }
        else {
            return vcs[i - 1]
        }
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let i = ((viewController as! UINavigationController).topViewController as! ViewController).number
        if i > 8 {
            return nil
        }
        else if i < 0 {
            return nil
        }
        else {
            return vcs[i + 1]
        }
    }
    
    
}
