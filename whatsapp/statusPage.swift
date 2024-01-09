//
//  statusPage.swift
//  whatsapp
//
//  Created by apple on 19/12/23.
//

// call page is status page and status page is call page

import UIKit

class statusPage: UITableViewCell {
    
    @IBOutlet weak var statusImage: UIImageView!
    
    @IBOutlet weak var statusName: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        statusImage.layer.cornerRadius = 0.5 * statusImage.bounds.size.width
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
