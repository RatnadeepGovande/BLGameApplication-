//
//  SettingViewController.swift
//  BLEGame
//
//  Created by Ratnadeep on 1/9/18.
//  Copyright © 2018 Ratnadeep. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func backBtnAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func saveBtnAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
