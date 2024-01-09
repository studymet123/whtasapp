//
//  CollectionViewCellStatus.swift
//  whatsapp
//
//  Created by apple on 19/12/23.
//

import UIKit

class CollectionViewCellStatus: UICollectionViewCell {

    @IBOutlet weak var statusPageName: UILabel!
    @IBOutlet weak var statusPageImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        statusPageImage.layer.cornerRadius = 0.5 * statusPageImage.bounds.size.width
        
    }

}
