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


//結果選択画面1
//ViewControllerを継承 結果の候補を表示する機能とボタンを追加
class ResultChildViewController1: UIViewController {
    
    //var delegate: resultChild1Delegate!
    
    //結果の候補
    
    
    //名前をtextViewに
    @IBOutlet weak var result: UITextView!
    
    //結果を表示する関数
    //childOptionOneを引数に
    func setResult(){
        
        
        //delegate.setResult(resultString: <#T##String#>, resultImage: <#T##UIImage#>)
        
        //フォントサイズの設定方法を考える
        result.font = UIFont(name:(result.font?.fontName)!,size: 30)
        result.isEditable = false
        result.text = Situation.result.childOptionOne()
    
    }
    
    //決定ボタン
    @IBAction func DecideButton(_ sender: UIButton) {
        
        //カウント・ランナーなどの処置(表示した結果の通りに処理する)
        
    
        //モーダルのdissmissができない
        //ここで処理するより親ビューか最悪ゲームビューで処理
        
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
