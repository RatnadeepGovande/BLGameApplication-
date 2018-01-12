//
//  HostListViewController.swift
//  BLEGame
//
//  Created by Ratnadeep on 1/10/18.
//  Copyright © 2018 Ratnadeep. All rights reserved.
//

import UIKit

class HostListViewController: UIViewController {

    @IBOutlet weak var hostListTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func backBtnAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }

}


extension HostListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: CustomeHostCell =  tableView.dequeueReusableCell(withIdentifier: "CustomeHostCell", for: indexPath) as! CustomeHostCell
        return cell
    }
}

//MARK:- CustomeHostCell

class CustomeHostCell: UITableViewCell {
   override func awakeFromNib() {
        super.awakeFromNib()
    }
    
   override  func setSelected(_ selected: Bool, animated: Bool) {
        
    }
}

