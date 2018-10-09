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
    static var noOutNoRunner = outCounts == 0 && !firstRunnerExists && !secondRunnerExists && !thirdRunnerExists
    static var oneOutNoRunner = outCounts == 1 && !firstRunnerExists && !secondRunnerExists && !thirdRunnerExists
    static var twoOutNoRunner = outCounts == 2 && !firstRunnerExists && !secondRunnerExists && !thirdRunnerExists
    static var noOutRunnerOnFirst = outCounts == 0 && firstRunnerExists && !secondRunnerExists && !thirdRunnerExists
    static var oneOutRunnerOnFirst = outCounts == 1 && firstRunnerExists && !secondRunnerExists && !thirdRunnerExists
    static var twoOutRunnerOnFirst = outCounts == 2 && firstRunnerExists && !secondRunnerExists && !thirdRunnerExists
    static var noOutRunnerOnSecond = outCounts == 0 && !firstRunnerExists && secondRunnerExists && !thirdRunnerExists
    static var oneOutRunnerOnSecond = outCounts == 1 && !firstRunnerExists && secondRunnerExists && !thirdRunnerExists
    static var twoOutRunnerOnSecond = outCounts == 2 && !firstRunnerExists && secondRunnerExists && !thirdRunnerExists
    static var noOutRunnerOnThird = outCounts == 0 && !firstRunnerExists && !secondRunnerExists && thirdRunnerExists
    static var oneOutRunnerOnThird = outCounts == 1 && !firstRunnerExists && !secondRunnerExists && thirdRunnerExists
    static var twoOutRunnerOnThird = outCounts == 2 && !firstRunnerExists && !secondRunnerExists && thirdRunnerExists
    static var noOutRunnersOnFirstAndSecond = outCounts == 0  && firstRunnerExists && secondRunnerExists && !thirdRunnerExists
    static var oneOutRunnersOnFirstAndSecond = outCounts == 1  && firstRunnerExists && secondRunnerExists && !thirdRunnerExists
    static var twoOutRunnersOnFirstAndSecond = outCounts == 2  && firstRunnerExists && secondRunnerExists && !thirdRunnerExists
    static var noOutRunnersOnFirstAndThird = outCounts == 0  && firstRunnerExists && !secondRunnerExists && thirdRunnerExists
    static var oneOutRunnersOnFirstAndThird = outCounts == 1  && firstRunnerExists && !secondRunnerExists && thirdRunnerExists
    static var twoOutRunnersOnFirstAndThird = outCounts == 2  && firstRunnerExists && !secondRunnerExists && thirdRunnerExists
    static var noOutRunnersOnSecondAndThird = outCounts == 0  && !firstRunnerExists && secondRunnerExists && thirdRunnerExists
    static var oneOutRunnersOnSecondAndThird = outCounts == 1  && !firstRunnerExists && secondRunnerExists && thirdRunnerExists
    static var twoOutRunnersOnSecondAndThird = outCounts == 2  && !firstRunnerExists && secondRunnerExists && thirdRunnerExists
    static var noOutFullBase = outCounts == 0  && firstRunnerExists && secondRunnerExists && thirdRunnerExists
    static var oneOutFullBase = outCounts == 1  && firstRunnerExists && secondRunnerExists && thirdRunnerExists
    static var twoOutFullBase = outCounts == 2  && firstRunnerExists && secondRunnerExists && thirdRunnerExists

}
