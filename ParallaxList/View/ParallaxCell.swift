//
//  ParallaxCell.swift
//  ParallaxList
//
//  Created by Dan Lindsay on 2017-12-11.
//  Copyright © 2017 Dan Lindsay. All rights reserved.
//

import UIKit
import CoreMotion

enum CellIdentifier: String {
    case parallaxCell = "parallaxCell"
}

class ParallaxCell: UITableViewCell {
    
    
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupParallax()
    }
    
    func configureCell(withImage image: UIImage, title: String) {
        itemImageView.image = image
        titleLbl.text = title
    }
    
    func setupParallax() {
        let min: CGFloat = -30
        let max: CGFloat = 30
        
        let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue = min
        xMotion.maximumRelativeValue = max
        
        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongVerticalAxis)
        yMotion.minimumRelativeValue = min
        yMotion.maximumRelativeValue = max
        
        let motionEffectGroup = UIMotionEffectGroup()
        motionEffectGroup.motionEffects = [xMotion, yMotion]
        
        itemImageView.addMotionEffect(motionEffectGroup)
    }

    

}
