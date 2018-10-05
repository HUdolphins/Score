//
//  ResultChildViewController.swift
//  Score
//
//  Created by 野村 和史 on 2018/09/22.
//  Copyright © 2018年 Kazuki Ohashi. All rights reserved.
//

import UIKit
import FirebaseAuth


//protocol resultChild1Delegate{
//    func setResult(resultString: String, resultImage: UIImage)
//
//    //処理は全てResultViewController決めたい
//
//}
//


//ViewControllerを継承 結果の候補を表示する機能とボタンを追加
class ResultChildViewController1: UIViewController {
    
    //var delegate: resultChild1Delegate!
    
    //結果の候補
    
    
    //名前をtextViewに
    @IBOutlet weak var result: UITextView!
    
    //結果を表示する関数
    func setResult(){
        
        
        //delegate.setResult(resultString: <#T##String#>, resultImage: <#T##UIImage#>)
        
        
        //ピッチャーボタンが押されたとき
        if Situation.ballPosition == 1{
            if Situation.outCounts == 2{
                //2アウトランナーなし
                if Situation.firstRunnerExists == 0 && Situation.secondRunnerExists == 0 && Situation.thirdRunnerExists == 0 {
                    //処理
                    result.font = UIFont(name:(result.font?.fontName)!,size: 30)
                    result.text = "ピッチャー捕球\n3アウトチェンジ"
                    result.isEditable = false
                    }
                else if Situation.firstRunnerExists == 1 && Situation.secondRunnerExists == 0 && Situation.thirdRunnerExists == 0{
        
                    }
            }
        }
    }
    
    //決定ボタン
    @IBAction func DecideButton(_ sender: UIButton) {
        
        //カウント・ランナーなどの処置(表示した結果の通りに処理する)
        //ピッチャーボタンが押されたとき
        if Situation.ballPosition == 1{
            if Situation.outCounts == 2{
                //2アウトランナーなし
                if Situation.firstRunnerExists == 0 && Situation.secondRunnerExists == 0 && Situation.thirdRunnerExists == 0 {
                    //処理(ピッチャー捕球、3アウトチェンジ)
                    
                    //カウントを初期化
                    Situation.outCounts = 0
                    Situation.strikeCounts = 0
                    Situation.ballCounts = 0
                    
                    //ランナーを初期化
                    Situation.firstRunnerExists = 0
                    Situation.secondRunnerExists = 0
                    Situation.thirdRunnerExists = 0
                    
                    //打順を次へ
                    if Situation.battingOrder == 9 {
                        Situation.battingOrder = 1
                    }
                    else {
                        Situation.battingOrder += 1
                    }
                    
                    //回を次の回へ
                    if Situation.toporbottom == "Top"{
                        Situation.toporbottom = "Bottom"
                    }
                    else {
                        Situation.inning += 1
                        Situation.toporbottom = "Top"
                    }
                    
                }
                else if Situation.firstRunnerExists == 1 && Situation.secondRunnerExists == 0 && Situation.thirdRunnerExists == 0{
                    
                }
            }
        }
        //試合画面へ戻る
        
        
        
        
        
        //モーダルのdissmissができない
        //ここで処理するより親ビューか最悪ゲームビューで処理
        
        
        Situation.ballPosition = 0
        
        let mainStoryBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let gameViewController = mainStoryBoard.instantiateViewController(withIdentifier: "Game")
        self.present(gameViewController,animated: true,completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //結果表示部分の背景の色
        result.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        //結果テキストを中央に揃える
        result.textAlignment = NSTextAlignment.center
        setResult()
        
        
        
    }

    
}
