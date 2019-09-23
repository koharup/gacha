//
//  ResultViewController.swift
//  gacha
//
//  Created by kohari on 2019/09/19.
//  Copyright © 2019 kohari. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    //乱数を入れるためのInt型の変数を用意
    var number: Int!
    
    //背景画像とモンスター画像を表示するためのImageViewを用意
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var monsterImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        //0から9までの乱数を発生させる
        number = Int(arc4random_uniform(10))
        
        if number == 9{
            monsterImageView.image = UIImage(named: "monster010")
            backgroundImageView.image = UIImage(named: "bg_gold")
        }else if number > 7{
            monsterImageView.image = UIImage(named: "monster006")
            backgroundImageView.image = UIImage(named: "bg_red")
        }else {
            monsterImageView.image = UIImage(named: "monster001")
            backgroundImageView.image = UIImage(named: "bg_blue")
            
        }
    }
    
    @IBAction func back (){
        self.dismiss(animated: true, completion: nil)
    }
    
    

}
