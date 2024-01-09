//
//  callPage4CollectionViewCell.swift
//  whatsapp
//
//  Created by apple on 21/12/23.
//

import UIKit

class callPage4CollectionViewCell: UICollectionViewCell {
    var mike = true
    
    @IBOutlet weak var channelImage: UIImageView!
    
    @IBOutlet weak var channelName: UILabel!
    
    @IBOutlet weak var channelBtnFollow: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        channelBtnFollow.layer.cornerRadius = 10
        channelImage.layer.cornerRadius = 0.5 * channelImage.bounds.size.width
    }

    @IBAction func followBtn(_ sender: UIButton) {
        
        if  mike {
            channelBtnFollow.setTitle("Following", for: .normal)
            } else {
                channelBtnFollow.setTitle("Follow", for: .normal)
            }
            mike = !mike
        
    }
}
