//
//  ResultViewController.swift
//  CheckWork2
//
//  Created by 原田澪 on 2020/04/02.
//  Copyright © 2020 原田澪. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    //乱数を入れるためのInt型の変数を用意
    var number: Int!
    
    //背景画像とモンスター画像を表示するためのImageViewを用意
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var monsterImageView: UIImageView!
    @IBOutlet var rabbitNameLabel: UILabel!
    @IBOutlet var rareLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        //0~9までの乱数を発生させる
        number = Int.random(in: 0...9)
        
        if number == 9 {
            monsterImageView.image = UIImage(named: "netherlanddwarf")
            backgroundImageView.image = UIImage(named: "bg_rare")
        } else if number > 7 {
            monsterImageView.image = UIImage(named: "lopeared")
            backgroundImageView.image = UIImage(named: "bg_rainbow")
        } else {
            monsterImageView.image = UIImage(named: "white")
            backgroundImageView.image = UIImage(named: "bg_orange")
        }
        
    }
    
    @IBAction func back() {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
