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

class ResultViewController: UIViewController, ResultChildDelegate {
    var pageMenu: CAPSPageMenu?
    
    
    let playerRef = Database.database().reference().child("players")
    //ohashi: player配列
    
    override func viewWillAppear(_ animated: Bool) {
        //型はUIViewControllerでいいのか、resultChildViewControllerのクラスを作るなら配列の型変えないといけない
        let resultChildViewController1 = self.storyboard?.instantiateViewController(withIdentifier: "Result1") as! ResultChildViewController1
        let resultChildViewController2 = self.storyboard?.instantiateViewController(withIdentifier: "Result2")
        let resultChildViewController3 = self.storyboard?.instantiateViewController(withIdentifier: "Result3")
        let resultChildViewController4 = self.storyboard?.instantiateViewController(withIdentifier: "Result4")
        resultChildViewController1.delegate = self
        resultChildViewController2?.title = "結果2"
        resultChildViewController3?.title = "結果3"
        resultChildViewController4?.title = "その他"

        
        let resultChildViewControllerArray: [UIViewController] = [resultChildViewController1, resultChildViewController2!, resultChildViewController3!, resultChildViewController4!]
        
        let parameters: [CAPSPageMenuOption] = [
            .menuItemSeparatorWidth(4.0),
            .useMenuLikeSegmentedControl(true),
            .menuItemSeparatorPercentageHeight(0.0),
            .scrollMenuBackgroundColor(#colorLiteral(red: 0, green: 0.3764705882, blue: 0.01568627451, alpha: 1)),
            .selectionIndicatorColor(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))
        ]

        pageMenu =  CAPSPageMenu(viewControllers: resultChildViewControllerArray, frame: view.bounds, pageMenuOptions: parameters)
        view.addSubview(pageMenu!.view)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
//    @objc func handleDecideButtonOne(_ sender: UIButton, forEvent event: UIEvent){
//        self.dismiss(animated: true, completion: nil)
//    }
    }
    
    //oohashi:childViewControllerで結果ボタンおされたときの処理
    func sendResult() {
        
        Situation.result.childButtonTapedOne()
        SituationUpdate()
        if Situation.topOrBottom == "Top"{
            //ohashi: 打ったバッター
            let batter = Situation.topBattersArray[Situation.topBattingOrder]
            //ohashi:バッターの結果の配列に今の結果を挿入
            
            
            
            
            //childTappedOneに結果に返させる？？？？？？？？？？？？？？
            batter.battingResultsArray.insert("送信する結果", at: 0)
            //ohashi:送信用のデータの形にする
            //ohashi: 試合のデータ、相手、何球目か、コメント
            let resultData = ["results":batter.battingResultsArray]
            //ohashi:送信用のデータにデータベース上のデータをアップデート
            playerRef.child(batter.id!).updateChildValues(resultData)
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    
    //oohashi: 得点圏の打席かどうか
    
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
}
