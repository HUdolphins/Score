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

class ResultViewController: ViewController {
    
    var playerArray: [FIRPlayer] = []
    var playerRef: DatabaseReference?
    var pageMenu: CAPSPageMenu?
    var battingOrder:Int = 0
    var result : String = ""
    var outCounts = 0
    //ストライク、ボール、ランナーの状況、
        //何を渡すか。打順、打者と投手のID、捕殺だれか、結果、想定される結果３パターン
    
    

    func sendRessult(){
        playerArray[battingOrder].results.insert("捕飛", at: 0)
        let results = ["results": playerArray[battingOrder].results]
        playerRef?.child("player").child(playerArray[battingOrder].id!).updateChildValues(results)
    }

    

}
