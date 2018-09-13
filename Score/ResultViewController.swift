//
//  ResultViewController.swift
//  Score
//
//  Created by Kazuki Ohashi on 2018/09/11.
//  Copyright © 2018年 Kazuki Ohashi. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
import PageMenu

class ResultViewController: UIViewController {
    
    var playerArray: [FIRPlayer] = []
    var playerRef: DatabaseReference?
    
    override func viewWillAppear(_ animated: Bool) {
        playerRef = Database.database().reference()
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func sendRessult(){
        playerArray[battingOrder].results.insert("捕飛", at: 0)
        let results = ["results": playerArray[battingOrder].results]
        playerRef.child("player").child(playerArray[battingOrder].id!).updateChildValues(results)
    }
    

}
