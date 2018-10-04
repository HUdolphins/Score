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
    
    //カウント
    internal static var outCounts:Int = 2
    internal static var strikeCounts:Int = 0
    internal static var ballCounts:Int = 0
    
    //ボールが飛んだ場所
    internal static var ballPosition:Int = 0
    
    //打順
    internal static var battingOrder:Int = 0
    
    //ランナーの有無
    internal static var firstRunnerExists:Int = 0
    internal static var secondRunnerExists:Int = 0
    internal static var thirdRunnerExists:Int = 0
    
    //回の表裏
    internal static var inning = 1
    internal static var toporbottom = "Top"
}
