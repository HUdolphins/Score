//
//  HomeCellViewController.swift
//  Score
//
//  Created by Kazuki Ohashi on 2018/09/14.
//  Copyright © 2018年 Kazuki Ohashi. All rights reserved.
//

import UIKit
import SpreadsheetView

class HomeCellViewController: UIViewController, SpreadsheetViewDataSource {
    
    
    @IBOutlet weak var spreadSheetView: SpreadsheetView!
    
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfColumns(in spreadsheetView: SpreadsheetView) -> Int {
        return 0
    }
    func numberOfRows(in spreadsheetView: SpreadsheetView) -> Int {
        return 0
    }
    
    func spreadsheetView(_ spreadsheetView: SpreadsheetView, heightForRow row: Int) -> CGFloat {
        return 0
    }
    func spreadsheetView(_ spreadsheetView: SpreadsheetView, widthForColumn column: Int) -> CGFloat {
        return 0
    }
    

    
    
}
