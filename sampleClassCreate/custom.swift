//
//  custom.swift
//  sampleClassCreate
//
//  Created by yuka on 2018/05/25.
//  Copyright © 2018年 yuka. All rights reserved.
//

import Foundation
import UIKit


// 列挙体 (普通は半角英数使います)
// "念能力"という名前のクラスのようなものができていて、その中身
enum 念能力 {
    case 強化系
    case 変化系
    case 具現化系
    case 操作系
    case 放出系
    case 特質系
}


class Hunter {
    var codeName:String!
    var mynen:念能力!
    var isHatsu:Bool!
    
    init(codeName:String, mynen:念能力) {
        self.codeName = codeName
        self.mynen = mynen
        isHatsu = false

    }
    
    func hatsu() {
        isHatsu = true
    }
    
    func 水見式() {
        if isHatsu {
            switch mynen  {
            case .強化系:
                print("水の量が溢れる",codeName)
            case .変化系:
                print("水の味が変わる",codeName)
            case .具現化系:
                print("水に不純物が出現",codeName)
            case .操作系:
                print("葉が動く",codeName)
            case .放出系:
                print("水の色が変わる",codeName)
            case .特質系:
                print("その他の変化",codeName)
            default:
                print("何もない",codeName)
            }
        }
        
    }
}

// 継承
class Ryodan: Hunter {
    var kumonumber:Int!
    
    override init(codeName: String, mynen : 念能力 ) {
        super.init(codeName: codeName, mynen: mynen)
        
        switch codeName {
        case "クロロ":
            kumonumber = 0
        case "ノブナガ":
            kumonumber = 1
        case "ヒソカ":
            kumonumber = 4
        case "ウボォーキン":
            kumonumber = 11
        default:
            kumonumber = -1
        }
    }
    
    func cointos(vs:Ryodan) {
        print("揉めたらコイントスで決める")
        var winner = self
        if arc4random_uniform(2) == 0 {
            winner = vs
        }
        
        print(winner.codeName,"の勝ち！")
    }
    
}
