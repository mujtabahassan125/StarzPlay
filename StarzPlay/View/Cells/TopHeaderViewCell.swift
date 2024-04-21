//
//  TopHeaderViewCell.swift
//  StarzPlay
//
//  Created by Syed Mujtaba Hassan on 21/04/2024.
//

import UIKit

class TopHeaderViewCell: UITableViewCell {
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
//    func setupCollectionView() {
//        collectionView.delegate = self
//        collectionView.dataSource = self
//        collectionView.register(UINib(nibName: "YourCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "YourCollectionViewCell")
//    }
    
}
