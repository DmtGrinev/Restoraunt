//
//  MainNavigationbar.swift
//  restoraunt
//
//  Created by Tim Grinev on 27.02.2021.
//

import UIKit

class MainNavigationbar: UINavigationController {
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewControllers = [RestMenuViewController()]
    }
}
