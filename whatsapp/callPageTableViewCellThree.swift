//
//  callPageTableViewCellThree.swift
//  whatsapp
//
//  Created by apple on 21/12/23.
//

import UIKit

class callPageTableViewCellThree: UITableViewCell {
    
    @IBOutlet weak var proImg: UIImageView!
    
    @IBOutlet weak var headingLabl: UILabel!
    
    @IBOutlet weak var descriptionList: UILabel!
    
    @IBOutlet weak var topicImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        proImg.layer.cornerRadius = 0.5 * proImg.bounds.size.width
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
