//
//  StartupViewController.swift
//  BLEGame
//
//  Created by Ratnadeep on 12/13/17.
//  Copyright © 2017 Ratnadeep. All rights reserved.
//

import UIKit

class StartupViewController: UIViewController {

    @IBOutlet weak var startBtn: UIButton!
    @IBOutlet weak var settingBtn: UIButton!
    @IBOutlet weak var checkMarkBtn: UIButton!
    @IBOutlet weak var extensionLbl: UILabel!
    var isCheckMark: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureView()
    }
    
    func configureView () {
        let attributedString = NSAttributedString(string: "Enable extension mode", attributes:
            [NSAttributedStringKey.underlineStyle: NSUnderlineStyle.styleSingle.rawValue])
        extensionLbl.attributedText = attributedString
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
           startBtn.layer.cornerRadius = self.startBtn.frame.size.height/2
           startBtn.clipsToBounds = true
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func startBtnAction(_ sender: UIButton) {
        
        let dashboardViewController: DashboardViewController =  UIUtility.getStoryboard(.MainStoryboard)?.instantiateViewController(withIdentifier: "DashboardViewController") as! DashboardViewController
        self.navigationController?.pushViewController(dashboardViewController, animated: true)
        
    }
    
    @IBAction func settingBtnAction(_ sender: UIButton) {
        let settingViewController: SettingViewController = UIUtility.getStoryboard(.MainStoryboard)?.instantiateViewController(withIdentifier: "SettingViewController") as! SettingViewController
        self.navigationController?.pushViewController(settingViewController, animated: true)
    }
    
    
    @IBAction func checkMarkAction(_ sender: UIButton) {
        if (self.isCheckMark){
             self.isCheckMark = false;
            self.checkMarkBtn.backgroundColor = UIColor.red
        }else{
            self.isCheckMark = true;
            self.checkMarkBtn.backgroundColor =  UIColor.blue
        }
        
    }
    
}
