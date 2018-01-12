//
//  DashboardViewController.swift
//  BLEGame
//
//  Created by Ratnadeep on 12/13/17.
//  Copyright © 2017 Ratnadeep. All rights reserved.
//

import UIKit
import MultipeerConnectivity
class DashboardViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func backBtnAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func hostGameBtnAction(){
        let storyboard : UIStoryboard =  UIStoryboard.init(name: "Main", bundle: nil)
        let hostdetailController : HostViewController = storyboard.instantiateViewController(withIdentifier: "HostViewController") as! HostViewController
        self.navigationController?.pushViewController(hostdetailController, animated: true)
    }
    
    @IBAction func joinBtnAction (_ sender: UIButton) {
        let hostListViewController: HostListViewController = UIUtility.getStoryboard(.MainStoryboard)?.instantiateViewController(withIdentifier: "HostListViewController") as! HostListViewController
        self.navigationController?.pushViewController(hostListViewController, animated: true)

    }

}
