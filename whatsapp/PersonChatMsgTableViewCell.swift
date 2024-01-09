//
//  PersonChatMsgTableViewCell.swift
//  whatsapp
//
//  Created by apple on 22/12/23.
//

import UIKit

class PersonChatMsgTableViewCell: UITableViewCell {
    
    @IBOutlet weak var chatLabelMain: UILabel!
    
    @IBOutlet weak var chatLabel: UILabel!
    
    @IBOutlet weak var greenChatView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
        //chatLabelMain.layer.cornerRadius = 13
        greenChatView.layer.cornerRadius = 13
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
