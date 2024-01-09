//
//  callPage.swift
//  whatsapp
//
//  Created by apple on 19/12/23.
//


// call page is status page and status page is call page

import UIKit

class callPage: UITableViewCell {
    
    var stat = ["kristen stewart","christian bale","di caprio","natlie portman","mammootty"]

    @IBOutlet weak var collectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
        collectionView.register(UINib(nibName: "CollectionViewCellStatus", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCellStatus")
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
        
    }
    
}

extension callPage:UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return stat.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCellStatus", for: indexPath)as! CollectionViewCellStatus
        cell.statusPageImage.image = UIImage(named: stat[indexPath.row])
        cell.statusPageName.text = stat[indexPath.row]
        return cell
    }
    
    
}
