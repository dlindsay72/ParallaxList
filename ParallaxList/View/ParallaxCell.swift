//
//  ParallaxCell.swift
//  ParallaxList
//
//  Created by Dan Lindsay on 2017-12-11.
//  Copyright © 2017 Dan Lindsay. All rights reserved.
//

import UIKit

enum CellIdentifier: String {
    case parallaxCell = "parallaxCell"
}

class ParallaxCell: UITableViewCell {
    
    
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(withImage image: UIImage, title: String) {
        itemImageView.image = image
        titleLbl.text = title
    }
    
    func setupParallax() {
        
    }

    

}
