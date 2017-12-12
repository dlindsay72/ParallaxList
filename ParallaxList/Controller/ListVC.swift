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
        return imageArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifier.parallaxCell.rawValue, for: indexPath) as? ParallaxCell else {
            return UITableViewCell()
        }
        cell.configureCell(withImage: imageArray[indexPath.row], title: nameArray[indexPath.row])
        
        return cell
    }
    
    

}

