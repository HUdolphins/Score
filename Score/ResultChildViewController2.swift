//
//  ResultChildViewController.swift
//  Score
//
//  Created by 野村 和史 on 2018/09/22.
//  Copyright © 2018年 Kazuki Ohashi. All rights reserved.
//

import UIKit
import FirebaseAuth
import ESTabBarController

//ViewControllerを継承 結果の候補を表示する機能とボタンを追加
class ResultChildViewController2: UIViewController {
    
    //結果の候補
    @IBOutlet weak var result2: UITextView!

    
    func setResult(){
        
    }
    
    //決定ボタン
    @IBAction func DecideButton(_ sender: UIButton) {
        
        //カウント・ランナーなどの処置
        
      
        let mainStoryBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let gameViewController = mainStoryBoard.instantiateViewController(withIdentifier: "Game")
        self.present(gameViewController,animated: true,completion: nil)
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        setResult()
        
    }

    
}
