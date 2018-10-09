//
//  ResultChildViewController.swift
//  Score
//
//  Created by 野村 和史 on 2018/09/22.
//  Copyright © 2018年 Kazuki Ohashi. All rights reserved.
//

import UIKit
import FirebaseAuth
import Foundation


protocol ResultChildDelegate{
    //func setResult(resultEnumString: String, resultImage: UIImage)

    //oohashi:処理は全てResultViewController決めたい
    
    
    
    
    
    
    
    
    
    
    func sendResult()

}



//結果選択画面1
//ViewControllerを継承 結果の候補を表示する機能とボタンを追加
class ResultChildViewController1: UIViewController {
    //oohasi:デリゲートメソッドの入ってるインスタンス
    var delegate: ResultChildDelegate!
    
    //結果の候補
    
    @IBOutlet weak var resultTextView: UITextView!
    @IBOutlet weak var resultImageView: UIImageView!
    // oohasi:   ボタンはChildに@IBActionではなくOutletでつないでただの部品としてResultViewController から指示
    @IBOutlet weak var commentTextField: UITextField!
    @IBOutlet weak var resultDecideButton: UIButton!
    
    
   
    
        
        
    
        
        //フォントサイズの設定方法を考える
//        result.font = UIFont(name:(result.font?.fontName)!,size: 30)
//        result.isEditable = false
//        result.text = Situation.result.childOptionOne().resultString
    
    
    
    //決定ボタン
    
        
        //カウント・ランナーなどの処置(表示した結果の通りに処理する)
        
    
        //モーダルのdissmissができない
        //ここで処理するより親ビューか最悪ゲームビューで処理
        
//        let mainStoryBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//        let gameViewController = mainStoryBoard.instantiateViewController(withIdentifier: "Game")
//        self.present(gameViewController,animated: true,completion: nil)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SituationUpdate()
        //結果の表示
        resultTextView.text = Situation.result.childOptionOne().resultString
        //結果テキストの文字の大きさ
        resultTextView.font = resultTextView.font?.withSize(30)
        //結果表示部分の背景の色
        resultTextView.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        //結果テキストを中央に揃える
        resultTextView.textAlignment = NSTextAlignment.center
        setResult()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //結果表示部分の背景の色
        
        print(Situation.result.childOptionOne().resultString)
        print(delegate)
//        //oohasi:デリゲートメソッドを実行
//        self.delegate.setResult(resultEnumString: Situation.result.childOptionOne().resultString , resultImage: Situation.result.childOptionOne().resultImage )
        print(delegate)
    }
    @IBAction func sendResultButton(_ sender: Any) {
        self.delegate.sendResult()
    }
    
    func setResult(){
        self.title = Situation.result.childOptionOne().resultTitle
        self.resultImageView.image = Situation.result.childOptionOne().resultImage
        self.resultTextView.text = Situation.result.childOptionOne().resultString
        
    }
}

//Situationを更新する関数
func SituationUpdate(){
    Situation.noOutNoRunner = Situation.outCounts == 0 && !Situation.firstRunnerExists && !Situation.secondRunnerExists && !Situation.thirdRunnerExists
    Situation.oneOutNoRunner = Situation.outCounts == 1 && !Situation.firstRunnerExists && !Situation.secondRunnerExists && !Situation.thirdRunnerExists
    Situation.twoOutNoRunner = Situation.outCounts == 2 && !Situation.firstRunnerExists && !Situation.secondRunnerExists && !Situation.thirdRunnerExists
    Situation.noOutRunnerOnFirst = Situation.outCounts == 0 && Situation.firstRunnerExists && !Situation.secondRunnerExists && !Situation.thirdRunnerExists
    Situation.oneOutRunnerOnFirst = Situation.outCounts == 1 && Situation.firstRunnerExists && !Situation.secondRunnerExists && !Situation.thirdRunnerExists
    Situation.twoOutRunnerOnFirst = Situation.outCounts == 2 && Situation.firstRunnerExists && !Situation.secondRunnerExists && !Situation.thirdRunnerExists
    Situation.noOutRunnerOnSecond = Situation.outCounts == 0 && !Situation.firstRunnerExists && Situation.secondRunnerExists && !Situation.thirdRunnerExists
    Situation.oneOutRunnerOnSecond = Situation.outCounts == 1 && !Situation.firstRunnerExists && Situation.secondRunnerExists && !Situation.thirdRunnerExists
    Situation.twoOutRunnerOnSecond = Situation.outCounts == 2 && !Situation.firstRunnerExists && Situation.secondRunnerExists && !Situation.thirdRunnerExists
    Situation.noOutRunnerOnThird = Situation.outCounts == 0 && !Situation.firstRunnerExists && !Situation.secondRunnerExists && Situation.thirdRunnerExists
    Situation.oneOutRunnerOnThird = Situation.outCounts == 1 && !Situation.firstRunnerExists && !Situation.secondRunnerExists && Situation.thirdRunnerExists
    Situation.twoOutRunnerOnThird = Situation.outCounts == 2 && !Situation.firstRunnerExists && !Situation.secondRunnerExists && Situation.thirdRunnerExists
    Situation.noOutRunnersOnFirstAndSecond = Situation.outCounts == 0  && Situation.firstRunnerExists && Situation.secondRunnerExists && !Situation.thirdRunnerExists
    Situation.oneOutRunnersOnFirstAndSecond = Situation.outCounts == 1  && Situation.firstRunnerExists && Situation.secondRunnerExists && !Situation.thirdRunnerExists
    Situation.twoOutRunnersOnFirstAndSecond = Situation.outCounts == 2  && Situation.firstRunnerExists && Situation.secondRunnerExists && !Situation.thirdRunnerExists
    Situation.noOutRunnersOnFirstAndThird = Situation.outCounts == 0  && Situation.firstRunnerExists && !Situation.secondRunnerExists && Situation.thirdRunnerExists
    Situation.oneOutRunnersOnFirstAndThird = Situation.outCounts == 1  && Situation.firstRunnerExists && !Situation.secondRunnerExists && Situation.thirdRunnerExists
    Situation.twoOutRunnersOnFirstAndThird = Situation.outCounts == 2  && Situation.firstRunnerExists && !Situation.secondRunnerExists && Situation.thirdRunnerExists
    Situation.noOutRunnersOnSecondAndThird = Situation.outCounts == 0  && !Situation.firstRunnerExists && Situation.secondRunnerExists && Situation.thirdRunnerExists
    Situation.oneOutRunnersOnSecondAndThird = Situation.outCounts == 1  && !Situation.firstRunnerExists && Situation.secondRunnerExists && Situation.thirdRunnerExists
    Situation.twoOutRunnersOnSecondAndThird = Situation.outCounts == 2  && !Situation.firstRunnerExists && Situation.secondRunnerExists && Situation.thirdRunnerExists
    Situation.noOutFullBase = Situation.outCounts == 0  && Situation.firstRunnerExists && Situation.secondRunnerExists && Situation.thirdRunnerExists
    Situation.oneOutFullBase = Situation.outCounts == 1  && Situation.firstRunnerExists && Situation.secondRunnerExists && Situation.thirdRunnerExists
    Situation.twoOutFullBase = Situation.outCounts == 2  && Situation.firstRunnerExists && Situation.secondRunnerExists && Situation.thirdRunnerExists
}
