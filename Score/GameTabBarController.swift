//
//  GameTabBarController.swift
//  Score
//
//  Created by Kazuki Ohashi on 2018/10/12.
//  Copyright © 2018年 Kazuki Ohashi. All rights reserved.
//

import UIKit

class GameTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.selectedIndex = 0
        reloadScore()
    }
    
    func reloadScore(){

        self.tabBar.items![1].badgeColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        self.tabBar.items![1].badgeValue = "\(Situation.topScore)"
        self.tabBar.items![2].badgeColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
        self.tabBar.items![2].badgeValue = "\(Situation.bottomScore)"
    }


}
