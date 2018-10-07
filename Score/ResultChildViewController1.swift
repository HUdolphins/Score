//
//  ResultChildViewController.swift
//  Score
//
//  Created by 野村 和史 on 2018/09/22.
//  Copyright © 2018年 Kazuki Ohashi. All rights reserved.
//

import UIKit
import FirebaseAuth


protocol resultChild1Delegate{
    func setResult(resultEnumString: String, resultImage: UIImage)

    //oohashi:処理は全てResultViewController決めたい

}



//結果選択画面1
//ViewControllerを継承 結果の候補を表示する機能とボタンを追加
class ResultChildViewController1: UIViewController {
    //oohasi:デリゲートメソッドの入ってるインスタンス
    var delegate: resultChild1Delegate?
    
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
        //結果表示部分の背景の色
        resultTextView.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        //結果テキストを中央に揃える
        resultTextView.textAlignment = NSTextAlignment.center
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //結果表示部分の背景の色
       
        
        print(Situation.result.childOptionOne().resultString)
        print()
        //oohasi:デリゲートメソッドを実行
        self.delegate?.setResult(resultEnumString: Situation.result.childOptionOne().resultString , resultImage: Situation.result.childOptionOne().resultImage )
    }
}

