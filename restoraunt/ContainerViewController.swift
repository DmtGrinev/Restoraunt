//
//  ContainerViewController.swift
//  restoraunt
//
//  Created by Tim Grinev on 28.02.2021.
//

import UIKit

class ContainerViewController: UIViewController, RestMenuViewControllerDelegate {
    
    var leftMenuViewController: UIViewController!
    var controller: UIViewController!
    var navigation: UINavigationController!
    var isMove = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
          configureLeftMenuViewController()
        configureMainNavigationbar()
    }
    
    func configureRestMenuViewController() {
        let restMenuViewController = RestMenuViewController()
        restMenuViewController.delagate = self
        controller = restMenuViewController
        view.addSubview(controller.view)
        addChild(controller)
        
    }
    
    func configureLeftMenuViewController() {
        if leftMenuViewController == nil {
            leftMenuViewController = LeftMenuViewController()
            view.insertSubview(leftMenuViewController.view, at: 0)
            addChild(leftMenuViewController)
            print("sadasfs")
        }
    }
    
    func configureMainNavigationbar() {
        let mainNavigationBar = MainNavigationbar()
        //    mainNavigationBar.delagate = self
        navigation = mainNavigationBar
        view.addSubview(navigation.view)
        addChild(navigation)
    }
    
    func showLeftMenuViewController(shouldMove: Bool) {
        if shouldMove {
            UIView.animate(withDuration: 0.5,
                           delay: 0,
                           usingSpringWithDamping: 0.8,
                           initialSpringVelocity: 0,
                           options: .curveEaseInOut) {
                self.controller.view.frame.origin.x = self.controller.view.frame.width - 140
            } completion: { (finished) in
            }
            
        } else {
            UIView.animate(withDuration: 0.5,
                           delay: 0,
                           usingSpringWithDamping: 0.8,
                           initialSpringVelocity: 0,
                           options: .curveEaseInOut) {
                self.controller.view.frame.origin.x = 0
            } completion: { (finished) in
            }
        }
    }
    
    //  MARK: - RestMenuViewControllerDelegate
    func toggleCategory() {
        configureLeftMenuViewController()
        isMove = !isMove
        showLeftMenuViewController(shouldMove: isMove)
    }
}
