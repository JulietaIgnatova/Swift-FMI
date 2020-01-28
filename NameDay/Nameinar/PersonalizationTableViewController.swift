//
//  PersonalizationTableViewController.swift
//  Nameinar
//
//  Created by Julieta Ignatova on 11/27/19.
//  Copyright © 2019 Swift FMI. All rights reserved.
//

import UIKit

class PersonalizationTableViewController: UITableViewController {

    
    @IBAction func onTabX(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

}
