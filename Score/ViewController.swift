//
//  ViewController.swift
//  Score
//
//  Created by Kazuki Ohashi on 2018/09/08.
//  Copyright © 2018年 Kazuki Ohashi. All rights reserved.
//

import UIKit
import FirebaseAuth
import ESTabBarController

class ViewController: UIViewController {
    //var doNotLogin: Bool = false
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //if !doNotLogin{
            
           // if Auth.auth().currentUser == nil{
                //let loginViewController = self.storyboard?.instantiateViewController(withIdentifier: "Login")
                //self.present(loginViewController!, animated: true, completion: nil)
           // }
        //}
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       
        setupTab()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func setupTab(){
        let tabBarController: ESTabBarController = ESTabBarController(tabIconNames: ["home", "game", "account"])
        tabBarController.selectedColor = #colorLiteral(red: 0, green: 0.3960784314, blue: 0.01568627451, alpha: 1)
        tabBarController.buttonsBackgroundColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
        tabBarController.selectionIndicatorHeight = 3
        
        addChildViewController(tabBarController)
        let tabBarView = tabBarController.view!
        tabBarView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tabBarView)
        let safeArea = view.safeAreaLayoutGuide
        NSLayoutConstraint.activate([tabBarView.topAnchor.constraint(equalTo: safeArea.topAnchor), tabBarView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor), tabBarView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor), tabBarView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor)])
        tabBarController.didMove(toParentViewController: self)
        let homeViewController = storyboard?.instantiateViewController(withIdentifier: "Home")
        let accountViewController = storyboard?.instantiateViewController(withIdentifier: "Account")
        
        tabBarController.setView(homeViewController, at: 0)
        tabBarController.setView(accountViewController, at: 2)
        
        tabBarController.highlightButton(at: 1)
        tabBarController.setAction({
            let gameViewController = self.storyboard?.instantiateViewController(withIdentifier: "Game")
            self.present(gameViewController!, animated: true, completion: nil)
        }, at: 1)
        
        
    }


}

