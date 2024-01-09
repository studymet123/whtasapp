//
//  callPageTableViewCellFour.swift
//  whatsapp
//
//  Created by apple on 21/12/23.
//

import UIKit

class callPageTableViewCellFour: UITableViewCell {
    
    var channel = ["CHILD","BIR","TIGER","GIRL","DOG"]

    @IBOutlet weak var collectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        collectionView.register(UINib(nibName: "callPage4CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "callPage4CollectionViewCell")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
}

extension callPageTableViewCellFour : UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "callPage4CollectionViewCell", for: indexPath)as! callPage4CollectionViewCell
        cell.channelImage.image = UIImage(named:channel[indexPath.row] )
        cell.channelName.text = channel[indexPath.row]
        cell.layer.cornerRadius = 13
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.lightGray.cgColor
        return cell
    }
    
    
    
}
