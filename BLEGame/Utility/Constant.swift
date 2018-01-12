//
//  Constant.swift
//  BLEGame
//
//  Created by Ratnadeep on 12/13/17.
//  Copyright © 2017 Ratnadeep. All rights reserved.
//

import Foundation
import UIKit


enum AppStoryboard{
    case MainStoryboard
}
class UIUtility {
    static func appDelegate() -> AppDelegate {
        return  UIApplication.shared.delegate as! AppDelegate
    }
    
    static func getStoryboard(_ appStoryboard: AppStoryboard) -> UIStoryboard? {
        
        var storyboard: UIStoryboard?
        switch appStoryboard {
        case .MainStoryboard:
            storyboard =  UIStoryboard.init(name: "Main", bundle: nil)
        }
        return storyboard
    }
}
