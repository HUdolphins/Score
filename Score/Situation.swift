//
//  Situation.swift
//  Score
//
//  Created by 野村 和史 on 2018/09/13.
//  Copyright © 2018年 Kazuki Ohashi. All rights reserved.
//

import UIKit

class Situation: NSObject {
    internal static var outCounts:Int = 0
    internal static var strikeCounts:Int = 0
    internal static var ballCounts:Int = 0
    internal static var ballPosition:Int = 0
    internal static var firstRunnerExists:Int = 0
    internal static var secondRunnerExists:Int = 0
    internal static var thirdRunnerExists:Int = 0
    
    func batterout(){
        Situation.outCounts += 1
    }
    
    func strikeinc(){
        Situation.strikeCounts += 1
    }
    
    func ballinc(){
        Situation.ballCounts += 1
    }
}
