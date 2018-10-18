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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //結果の表示
        setResult()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //結果表示部分の背景の色
    }
    @IBAction func sendResultButton(_ sender: Any) {
        self.delegate.sendResult()
    }
    
    func setResult(){
            self.title = Situation.result.childOptionOne().resultTitle
        self.resultImageView.image = Situation.result.childOptionOne().resultImage
        self.resultTextView.text = Situation.result.childOptionOne().resultString
        //結果テキストの文字の大きさ
        self.resultTextView.font = resultTextView.font?.withSize(15)
        //結果表示部分の背景の色
        self.resultTextView.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        //結果テキストを中央に揃える
        self.resultTextView.textAlignment = NSTextAlignment.center
        
        //テキストを編集不可に
        self.resultTextView.isEditable = false
    }
}
