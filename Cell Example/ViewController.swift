//
//  ViewController.swift
//  Cell Example
//
//  Created by Stephen Smith on 4/26/18.
//  Copyright © 2018 Stephen Smith. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    @IBOutlet var tblViewUser: UITableView!
    
    var usersArray : Array =  ["michael"]
    
    override func viewDidLoad() {
        
        let nib = UINib.init(nibName: "MyCustomCell", bundle: nil)
        self.tblViewUser.register(nib, forCellReuseIdentifier: "MyCustomCell")
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return usersArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCustomCell", for: indexPath) as! MyCustomCell
        
        cell.lblFirstName.text = usersArray[indexPath.row]

        
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}
