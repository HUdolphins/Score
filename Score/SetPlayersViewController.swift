//
//  SetPlayersViewController.swift
//  Score
//
//  Created by Kazuki Ohashi on 2018/10/10.
//  Copyright © 2018年 Kazuki Ohashi. All rights reserved.
//

import UIKit
import FirebaseDatabase
import SVProgressHUD

class SetPlayersViewController: UIViewController {
    let playerRef = Database.database().reference().child("players")
    
    @IBOutlet weak var topBatterOneNameTextField: UITextField!
    @IBOutlet weak var topBatterTwoNameTextField: UITextField!
    @IBOutlet weak var topBatterThreeNameTextField: UITextField!
    @IBOutlet weak var topBatterFourNameTextField: UITextField!
    @IBOutlet weak var topBatterFiveNameTextField: UITextField!
    @IBOutlet weak var topBatterSixNameTextField: UITextField!
    @IBOutlet weak var topBatterSevenNameTextField: UITextField!
    @IBOutlet weak var topBatterEighttNameTextField: UITextField!
    @IBOutlet weak var topBatterNineNameTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func setPlayerButton(_ sender: Any) {
        
        if let topBatterOneName = topBatterOneNameTextField.text, let topBatterTwoName = topBatterTwoNameTextField.text, let topBatterThreeName = topBatterThreeNameTextField.text, let topBatterFourName = topBatterFourNameTextField.text, let topBatterFiveName = topBatterFiveNameTextField.text, let topBatterSixName = topBatterSixNameTextField.text, let topBatterSevenName = topBatterSevenNameTextField.text, let topBatterEightName = topBatterEighttNameTextField.text, let topBatterNineName = topBatterNineNameTextField.text{
            let topBatterOneData = ["name": topBatterOneName]
            let topBatterTwoData = ["name": topBatterTwoName]
            let topBatterThreeData = ["name": topBatterThreeName]
            let topBatterFourData = ["name": topBatterFourName]
            let topBatterFiveData = ["name": topBatterFiveName]
            let topBatterSixData = ["name": topBatterSixName]
            let topBatterSevenData = ["name": topBatterSevenName]
            let topBatterEightData = ["name": topBatterEightName]
            let topBatterNineData = ["name": topBatterNineName]
            
            //ohashi: varのがいいのか
            let topBattersDataArray = [topBatterOneData, topBatterTwoData, topBatterThreeData, topBatterFourData, topBatterFiveData,  topBatterSixData, topBatterSevenData, topBatterEightData,topBatterNineData]
            //ohashi: ９人分のデータをオートIDで作成
            for battersData in topBattersDataArray{
                playerRef.childByAutoId().setValue(battersData)
            }
        }else{
            SVProgressHUD.showError(withStatus: "空欄があります。")
        }
        //ohashi: Situation内の関数を初期値にする。試合終了時のがいいのか？
        Situation.outCounts = 0
        Situation.strikeCounts = 0
        Situation.ballCounts = 0
        Situation.topScore = 0
        Situation.bottomScore = 0
        Situation.topBattingOrder = 0
        Situation.bottomBattingOrder = 0
        Situation.firstRunnerExists = false
        Situation.secondRunnerExists = false
        Situation.thirdRunnerExists = false
        Situation.inning = 1
        Situation.topOrBottom = "Top"
        
       
        SVProgressHUD.showSuccess(withStatus: "プレイボール！！！")
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancelButton(_ sender: Any) {
        //ohashi:試合作成をキャンセル
        self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
