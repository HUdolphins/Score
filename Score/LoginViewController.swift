//
//  LoginViewController.swift
//  Score
//
//  Created by Kazuki Ohashi on 2018/09/18.
//  Copyright © 2018年 Kazuki Ohashi. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {
    var isSignIn: Bool = true
    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func handleLoginButton(_ sender: Any) {
    }
    
    
    @IBAction func handleNoLoginButton(_ sender: Any) {
        //let rootViewController = self.storyboard?.instantiateViewController(withIdentifier: "Root") as! ViewController
        //rootViewController.doNotLogin = true
        
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func segmentedControllTouched(_ sender: UISegmentedControl) {
        isSignIn = !isSignIn
        if isSignIn{
            loginButton.setTitle("ログイン", for: .normal)
        }else{
            loginButton.setTitle("アカウント作成", for: .normal)
        }
    }
}
