//
//  SetPlayersViewController.swift
//  Score
//
//  Created by Kazuki Ohashi on 2018/10/10.
//  Copyright © 2018年 Kazuki Ohashi. All rights reserved.
//

import UIKit
import FirebaseDatabase

class SetPlayersViewController: UIViewController {
    var playerRef = Database.database().reference().child("players")
    @IBOutlet weak var topBatterOneName: UITextField!
    @IBOutlet weak var topBatterTwoName: UITextField!
    @IBOutlet weak var topBatterThreeName: UITextField!
    @IBOutlet weak var topBatterFourName: UITextField!
    @IBOutlet weak var topBatterFiveName: UITextField!
    @IBOutlet weak var topBatterSixName: UITextField!
    @IBOutlet weak var topBatterSevenName: UITextField!
    @IBOutlet weak var topBatterEightName: UITextField!
    @IBOutlet weak var topBatterNineName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func setPlayerButton(_ sender: Any) {
        //oohashi: もしテキスト空ならダメ
        //ohashi: オーダーの配列アプリ内に作るか
        //ohashi: authの許可
        let topBatterOneData = ["name": topBatterOneName.text!]
        let topBatterTwoData = ["name": topBatterTwoName.text!]
        let topBatterThreeData = ["name": topBatterThreeName.text!]
        let topBatterFourData = ["name": topBatterFourName.text!]
        let topBatterFiveData = ["name": topBatterFiveName.text!]
        let topBatterSixData = ["name": topBatterSixName.text!]
        let topBatterSevenData = ["name": topBatterSevenName.text!]
        let topBatterEightData = ["name": topBatterEightName.text!]
        let topBatterNineData = ["name": topBatterNineName.text!]
        //ohashi: varのがいいのか
        let topBattersDataArray = [topBatterOneData, topBatterTwoData, topBatterThreeData, topBatterFourData, topBatterFiveData,  topBatterSixData, topBatterSevenData, topBatterEightData,topBatterNineData]
        //ohashi: ９人分のデータをオートIDで作成
        for battersData in topBattersDataArray{
            playerRef.childByAutoId().setValue(battersData)
        }
        playerRef.childByAutoId().setValue(topBatterOneData)
        let gameViewController = GameViewController()
        gameViewController.isSetPlayers = true
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancelButton(_ sender: Any) {
        //ohashi:試合作成をキャンセル
        self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
