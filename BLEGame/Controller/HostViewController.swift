//
//  HostViewController.swift
//  BLEGame
//
//  Created by Ratnadeep on 12/21/17.
//  Copyright © 2017 Ratnadeep. All rights reserved.
//

import UIKit

class HostViewController: UIViewController {
    
    @IBOutlet weak var thridStackView: UIStackView!
    @IBOutlet weak var firstStackView: UIStackView!
    @IBOutlet weak var secondStackView: UIStackView!

    @IBOutlet weak var firstUsernameLbl: UILabel!
    @IBOutlet weak var secondUsernameLbl: UILabel!
    @IBOutlet weak var thirdUsernameLbl: UILabel!
    
    let gameQuestionManager = GameQuestionManager()
    @IBOutlet weak var usernameLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.usernameLbl.text = UIDevice.current.name
        gameQuestionManager.delegate = self
        self.hiddenAllStack()
    }
    func hiddenAllStack () {
        self.thridStackView.isHidden = true
        self.firstStackView.isHidden = true
        self.secondStackView.isHidden = true
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func backBtnAction() {
        self.navigationController?.popViewController(animated: true)
    }

}

extension HostViewController: GameQuestionManagerDelegate {
    
    func connectedDevicesChanged(manager: GameQuestionManager, connectedDevices:[String]){
        
            OperationQueue.main.addOperation {
                  print("connectedDevices ----\(connectedDevices)")
            }
            
            if connectedDevices.count == 1 {
                DispatchQueue.main.async {
                self.firstStackView.isHidden = false
                    self.firstUsernameLbl.text = connectedDevices[0] as String
                }
            }else if connectedDevices.count == 2 {
                DispatchQueue.main.async {
                    self.firstStackView.isHidden = false
                    self.secondStackView.isHidden = false
                    self.firstUsernameLbl.text = connectedDevices[0] as String
                    self.secondUsernameLbl.text = connectedDevices[1] as String
                }
              
            }else if connectedDevices.count == 3 {
                 DispatchQueue.main.async {
                self.firstStackView.isHidden = false
                self.secondStackView.isHidden = false
                self.thridStackView.isHidden = false
                    self.firstUsernameLbl.text = connectedDevices[0] as String
                    self.secondUsernameLbl.text = connectedDevices[1] as String
                    self.thirdUsernameLbl.text = connectedDevices[1] as String
                }
            }else {
               self.hiddenAllStack()
            }
    }
}
