//
//  ViewController.swift
//  sampleClassCreate
//
//  Created by yuka on 2018/05/23.
//  Copyright © 2018年 yuka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let kuroro = Ryodan(codeName: "クロロ", mynen: .特質系)
    let nobu = Ryodan(codeName: "ノブナガ", mynen: .強化系)
    let sharu = Ryodan(codeName: "シャルナーク", mynen: .変化系)
    
    @IBOutlet weak var tapButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let gon = Hunter(codeName: "ゴン", mynen: .強化系)
        
        gon.hatsu()
        gon.水見式()
        
        let kirua = Hunter(codeName: "キルア", mynen: .変化系)
        kirua.hatsu()
        kirua.水見式()
        
        

        tapButton.setTitle("旅団が喧嘩したら", for: .normal)
        tapButton.titleLabel?.adjustsFontSizeToFitWidth = true
        
    }

    @IBAction func tapButton(_ sender: UIButton) {
        sharu.水見式()
        sharu.hatsu()
        sharu.cointos(vs: nobu)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

