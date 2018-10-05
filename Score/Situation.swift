//
//  Situation.swift
//  Score
//
//  Created by 野村 和史 on 2018/09/13.
//  Copyright © 2018年 Kazuki Ohashi. All rights reserved.
//

import UIKit

//現在の状況、一つ前の状況を保存しておく
class Situation: NSObject {
    
    
    
    //現在の状況
    internal static var result:ResultEnum!
    //カウント
    internal static var outCounts:Int = 2
    internal static var strikeCounts:Int = 0
    internal static var ballCounts:Int = 0
    
    //打順
    internal static var battingOrder:Int = 0
    
    //ランナーの有無
    internal static var firstRunnerExists = false
    internal static var secondRunnerExists = false
    internal static var thirdRunnerExists = false
    //Boolにするか
    
    
    
    //回の表裏
    internal static var inning = 1
    internal static var topOrBottom = "Top"
    
    //条件指定めんどいからまとめる
    static let noOutNoRunner = outCounts == 0 && !firstRunnerExists && !secondRunnerExists && !thirdRunnerExists
    static let oneOutNoRunner = outCounts == 1 && !firstRunnerExists && !secondRunnerExists && !thirdRunnerExists
    static let twoOutNoRunner = outCounts == 2 && !firstRunnerExists && !secondRunnerExists && !thirdRunnerExists
    static let noOutRunnerOnFirst = outCounts == 0 && firstRunnerExists && !secondRunnerExists && !thirdRunnerExists
    static let oneOutRunnerOnFirst = outCounts == 1 && firstRunnerExists && !secondRunnerExists && !thirdRunnerExists
    static let twoOutRunnerOnFirst = outCounts == 2 && firstRunnerExists && !secondRunnerExists && !thirdRunnerExists
    static let noOutRunnerOnSecond = outCounts == 0 && !firstRunnerExists && secondRunnerExists && !thirdRunnerExists
    static let oneOutRunnerOnSecond = outCounts == 1 && !firstRunnerExists && secondRunnerExists && !thirdRunnerExists
    static let twoOutRunnerOnSecond = outCounts == 2 && !firstRunnerExists && secondRunnerExists && !thirdRunnerExists
    static let noOutRunnerOnThird = outCounts == 0 && !firstRunnerExists && !secondRunnerExists && thirdRunnerExists
    static let oneOutRunnerOnThird = outCounts == 1 && !firstRunnerExists && !secondRunnerExists && thirdRunnerExists
    static let twoOutRunnerOnThird = outCounts == 2 && !firstRunnerExists && !secondRunnerExists && thirdRunnerExists
    static let noOutRunnersOnFirstAndSecond = outCounts == 0  && firstRunnerExists && secondRunnerExists && !thirdRunnerExists
    static let oneOutRunnersOnFirstAndSecond = outCounts == 1  && firstRunnerExists && secondRunnerExists && !thirdRunnerExists
    static let twoOutRunnersOnFirstAndSecond = outCounts == 2  && firstRunnerExists && secondRunnerExists && !thirdRunnerExists
    static let noOutRunnersOnFirstAndThird = outCounts == 0  && firstRunnerExists && !secondRunnerExists && thirdRunnerExists
    static let oneOutRunnersOnFirstAndThird = outCounts == 1  && firstRunnerExists && !secondRunnerExists && thirdRunnerExists
    static let twoOutRunnersOnFirstAndThird = outCounts == 2  && firstRunnerExists && !secondRunnerExists && thirdRunnerExists
    static let noOutRunnersOnSecondAndThird = outCounts == 0  && !firstRunnerExists && secondRunnerExists && thirdRunnerExists
    static let oneOutRunnersOnSecondAndThird = outCounts == 1  && !firstRunnerExists && secondRunnerExists && thirdRunnerExists
    static let twoOutRunnersOnSecondAndThird = outCounts == 2  && !firstRunnerExists && secondRunnerExists && thirdRunnerExists
    static let noOutFullBase = outCounts == 0  && firstRunnerExists && secondRunnerExists && thirdRunnerExists
    static let oneOutFullBase = outCounts == 1  && firstRunnerExists && secondRunnerExists && thirdRunnerExists
    static let twoOutFullBase = outCounts == 2  && firstRunnerExists && secondRunnerExists && thirdRunnerExists

}
