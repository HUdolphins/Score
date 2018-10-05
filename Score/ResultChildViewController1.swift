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

//結果選択画面1
//ViewControllerを継承 結果の候補を表示する機能とボタンを追加
class ResultChildViewController1: UIViewController {
    
    //結果の候補
    @IBOutlet weak var result: UITextView!
    
    //結果を表示する関数
    func setResult(){
        //ピッチャーボタンが押されたとき
        if Situation.ballPosition == 1{
            //2アウト
            if Situation.outCounts == 2{
                //2アウトランナーなし
                if Situation.firstRunnerExists == 0 && Situation.secondRunnerExists == 0 && Situation.thirdRunnerExists == 0 {
                    //処理
                    result.font = UIFont(name:(result.font?.fontName)!,size: 30)
                    result.text = "ピッチャー捕球\n3アウトチェンジ"
                    result.isEditable = false
                    }
                //2アウトランナー1塁
                else if Situation.firstRunnerExists == 1 && Situation.secondRunnerExists == 0 && Situation.thirdRunnerExists == 0{
                    //処理
                    result.font = UIFont(name:(result.font?.fontName)!,size: 30)
                    result.text = "ピッチャー捕球\n3アウトチェンジ"
                    result.isEditable = false
                }
                //2アウトランナー2塁
                else if Situation.firstRunnerExists == 0 && Situation.secondRunnerExists == 1 && Situation.thirdRunnerExists == 0{
                    //処理
                    result.font = UIFont(name:(result.font?.fontName)!,size: 30)
                    result.text = "ピッチャー捕球\n3アウトチェンジ"
                    result.isEditable = false
                }
                //2アウトランナー3塁
                else if Situation.firstRunnerExists == 0 && Situation.secondRunnerExists == 0 && Situation.thirdRunnerExists == 1{
                    //処理
                    result.font = UIFont(name:(result.font?.fontName)!,size: 30)
                    result.text = "ピッチャー捕球\n3アウトチェンジ"
                    result.isEditable = false
                }
                //2アウトランナー1,2塁
                else if Situation.firstRunnerExists == 1 && Situation.secondRunnerExists == 1 && Situation.thirdRunnerExists == 0{
                    //処理
                    result.font = UIFont(name:(result.font?.fontName)!,size: 30)
                    result.text = "ピッチャー捕球\n3アウトチェンジ"
                    result.isEditable = false
                }
                //2アウトランナー2,3塁
                else if Situation.firstRunnerExists == 0 && Situation.secondRunnerExists == 1 && Situation.thirdRunnerExists == 1{
                    //処理
                    result.font = UIFont(name:(result.font?.fontName)!,size: 30)
                    result.text = "ピッチャー捕球\n3アウトチェンジ"
                    result.isEditable = false
                }
                //2アウトランナー1,3塁
                else if Situation.firstRunnerExists == 1 && Situation.secondRunnerExists == 0 && Situation.thirdRunnerExists == 1{
                    //処理
                    result.font = UIFont(name:(result.font?.fontName)!,size: 30)
                    result.text = "ピッチャー捕球\n3アウトチェンジ"
                    result.isEditable = false
                    
                }
                //2アウトランナー満塁
                else if Situation.firstRunnerExists == 1 && Situation.secondRunnerExists == 1 && Situation.thirdRunnerExists == 1{
                    //処理
                    result.font = UIFont(name:(result.font?.fontName)!,size: 30)
                    result.text = "ピッチャー捕球\n3アウトチェンジ"
                    result.isEditable = false
                }
            }
                
            //1アウト
            else if Situation.outCounts == 1{
                //1アウトランナーなし
                if Situation.firstRunnerExists == 0 && Situation.secondRunnerExists == 0 && Situation.thirdRunnerExists == 0 {
                    //処理
                    result.font = UIFont(name:(result.font?.fontName)!,size: 30)
                    result.text = "ピッチャー捕球\n2アウトランナーなし"
                    result.isEditable = false
                }
                    //1アウトランナー1塁
                else if Situation.firstRunnerExists == 1 && Situation.secondRunnerExists == 0 && Situation.thirdRunnerExists == 0{
                    //処理
                    result.font = UIFont(name:(result.font?.fontName)!,size: 30)
                    result.text = "ピッチャー捕球\n2アウトランナー1塁"
                    result.isEditable = false
                }
                    //1アウトランナー2塁
                else if Situation.firstRunnerExists == 0 && Situation.secondRunnerExists == 1 && Situation.thirdRunnerExists == 0{
                    //処理
                    result.font = UIFont(name:(result.font?.fontName)!,size: 30)
                    result.text = "ピッチャー捕球\n2アウトランナー2塁"
                    result.isEditable = false
                }
                    //1アウトランナー3塁
                else if Situation.firstRunnerExists == 0 && Situation.secondRunnerExists == 0 && Situation.thirdRunnerExists == 1{
                    //処理
                    result.font = UIFont(name:(result.font?.fontName)!,size: 30)
                    result.text = "ピッチャー捕球\n2アウトランナー3塁"
                    result.isEditable = false
                }
                    //1アウトランナー1,2塁
                else if Situation.firstRunnerExists == 1 && Situation.secondRunnerExists == 1 && Situation.thirdRunnerExists == 0{
                    //処理
                    result.font = UIFont(name:(result.font?.fontName)!,size: 30)
                    result.text = "インフィールドフライ\n2アウトランナー1,2塁"
                    result.isEditable = false
                }
                    //1アウトランナー2,3塁
                else if Situation.firstRunnerExists == 0 && Situation.secondRunnerExists == 1 && Situation.thirdRunnerExists == 1{
                    //処理
                    result.font = UIFont(name:(result.font?.fontName)!,size: 30)
                    result.text = "ピッチャー捕球\n2アウトランナー2,3塁"
                    result.isEditable = false
                }
                    //1アウトランナー1,3塁
                else if Situation.firstRunnerExists == 1 && Situation.secondRunnerExists == 0 && Situation.thirdRunnerExists == 1{
                    //処理
                    result.font = UIFont(name:(result.font?.fontName)!,size: 30)
                    result.text = "ピッチャー捕球\n2アウトランナー1,3塁"
                    result.isEditable = false
                    
                }
                    //1アウトランナー満塁
                else if Situation.firstRunnerExists == 1 && Situation.secondRunnerExists == 1 && Situation.thirdRunnerExists == 1{
                    //処理
                    result.font = UIFont(name:(result.font?.fontName)!,size: 30)
                    result.text = "インフィールドフライ\n2アウトランナー満塁"
                    result.isEditable = false
                }
            }
            //ノーアウト
            else if Situation.outCounts == 0{
                //ノーアウトランナーなし
                if Situation.firstRunnerExists == 0 && Situation.secondRunnerExists == 0 && Situation.thirdRunnerExists == 0 {
                    //処理
                    result.font = UIFont(name:(result.font?.fontName)!,size: 30)
                    result.text = "ピッチャー捕球\n1アウトランナーなし"
                    result.isEditable = false
                }
                    //ノーアウトランナー1塁
                else if Situation.firstRunnerExists == 1 && Situation.secondRunnerExists == 0 && Situation.thirdRunnerExists == 0{
                    //処理
                    result.font = UIFont(name:(result.font?.fontName)!,size: 30)
                    result.text = "ピッチャー捕球\n1アウトランナー1塁"
                    result.isEditable = false
                }
                    //ノーアウトランナー2塁
                else if Situation.firstRunnerExists == 0 && Situation.secondRunnerExists == 1 && Situation.thirdRunnerExists == 0{
                    //処理
                    result.font = UIFont(name:(result.font?.fontName)!,size: 30)
                    result.text = "ピッチャー捕球\n1アウトランナー2塁"
                    result.isEditable = false
                }
                    //ノーアウトランナー3塁
                else if Situation.firstRunnerExists == 0 && Situation.secondRunnerExists == 0 && Situation.thirdRunnerExists == 1{
                    //処理
                    result.font = UIFont(name:(result.font?.fontName)!,size: 30)
                    result.text = "ピッチャー捕球\n1アウトランナー3塁"
                    result.isEditable = false
                }
                    //ノーアウトランナー1,2塁
                else if Situation.firstRunnerExists == 1 && Situation.secondRunnerExists == 1 && Situation.thirdRunnerExists == 0{
                    //処理
                    result.font = UIFont(name:(result.font?.fontName)!,size: 30)
                    result.text = "インフィールドフライ\n1アウトランナー1,2塁"
                    result.isEditable = false
                }
                    //ノーアウトランナー2,3塁
                else if Situation.firstRunnerExists == 0 && Situation.secondRunnerExists == 1 && Situation.thirdRunnerExists == 1{
                    //処理
                    result.font = UIFont(name:(result.font?.fontName)!,size: 30)
                    result.text = "ピッチャー捕球\n1アウトランナー2,3塁"
                    result.isEditable = false
                }
                    //ノーアウトランナー1,3塁
                else if Situation.firstRunnerExists == 1 && Situation.secondRunnerExists == 0 && Situation.thirdRunnerExists == 1{
                    //処理
                    result.font = UIFont(name:(result.font?.fontName)!,size: 30)
                    result.text = "ピッチャー捕球\n1アウトランナー1,3塁"
                    result.isEditable = false
                    
                }
                    //ノーアウトランナー満塁
                else if Situation.firstRunnerExists == 1 && Situation.secondRunnerExists == 1 && Situation.thirdRunnerExists == 1{
                    //処理
                    result.font = UIFont(name:(result.font?.fontName)!,size: 30)
                    result.text = "インフィールドフライ\n1アウトランナー満塁"
                    result.isEditable = false
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
                //2アウトランナー1塁
                else if Situation.firstRunnerExists == 1 && Situation.secondRunnerExists == 0 && Situation.thirdRunnerExists == 0{
                    //処理(ピッチャー捕球3アウトチェンジ)
                    
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
                //2アウトランナー2塁
                else if Situation.firstRunnerExists == 0 && Situation.secondRunnerExists == 1 && Situation.thirdRunnerExists == 0{
                    //処理(ピッチャー捕球 3アウトチェンジ)
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
                //2アウトランナー3塁
            }
        }
        //試合画面へ戻る
        
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
