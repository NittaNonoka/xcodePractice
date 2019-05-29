//
//  ViewController.swift
//  HowToShowTable
//
//  Created by 新田野乃華 on 2019/05/01.
//  Copyright © 2019 新田野乃華. All rights reserved.
//テーブル表示のみ

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
var data = ["いぬ","さる","きじ","ライオン","マンモス"]
    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       table.delegate = self
       table.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 配列「data」の要素数
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルの型を作る
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "myCell")
        // セルに表示するテキストを作る
        cell.textLabel?.text = data[indexPath.row]
        // セルをリターンする
        return cell
    }

}

