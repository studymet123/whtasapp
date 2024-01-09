//
//  chatPage.swift
//  whatsapp
//
//  Created by apple on 19/12/23.
//

import UIKit

class chatPage: UITableViewCell {

    @IBOutlet weak var profilePic: UIButton!
    @IBOutlet weak var profileBtn: UIButton!
    
    @IBOutlet weak var proImg: UIImageView!
    @IBOutlet weak var persName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        proImg.layer.cornerRadius = 0.5 * proImg.bounds.size.width
        
        
        
           
       

       
        
        
    }
        
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    @IBAction func profilePicAction(_ sender: Any) {
    }
    
    @IBAction func profileViewBtn(_ sender: Any) {
        
        
    }
    
}
extension chatPage{
    
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        let tappedImage = tapGestureRecognizer.view as! UIImageView

        // Your action
        print("worked")
        
    }
}
