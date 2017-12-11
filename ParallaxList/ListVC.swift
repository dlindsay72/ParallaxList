//
//  ListVC.swift
//  ParallaxList
//
//  Created by Dan Lindsay on 2017-12-11.
//  Copyright © 2017 Dan Lindsay. All rights reserved.
//

import UIKit

class ListVC: UITableViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }

}

