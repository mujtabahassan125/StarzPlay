//
//  SeasonsListingViewCell.swift
//  StarzPlay
//
//  Created by Mujtaba Hassan on 19/04/2024.
//

import UIKit

class SeasonsListingViewCell: UITableViewCell  {

    @IBOutlet weak var topCollectionView: UICollectionView!
    @IBOutlet weak var tableView: UITableView!
    override func awakeFromNib() {
        super.awakeFromNib()
        registerCells()
        setDelegates()
        
    }
    
    func setDelegates() {
        topCollectionView.delegate = self
        topCollectionView.dataSource = self
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func registerCells() {
        tableView.register(UINib(nibName: String(describing: EpisodeListViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: EpisodeListViewCell.self))
        
      //  topCollectionView.register(UINib(nibName: "SeasonsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: String(describing: SeasonsCollectionViewCell.self))
        
        topCollectionView.register(UINib(nibName: "SeasonsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "SeasonsCollectionViewCell")
       // topCollectionView.register(UINib(nibName: String(describing: SeasonsCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: SeasonsCollectionViewCell.self))
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}


extension SeasonsListingViewCell: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: EpisodeListViewCell.self)) as? EpisodeListViewCell else { return UITableViewCell() }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    
    
    
}

extension SeasonsListingViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: SeasonsCollectionViewCell.self), for: indexPath) as? SeasonsCollectionViewCell else { return UICollectionViewCell()}
        return cell
    }
    
//    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
//        <#code#>
//    }
    

    
}
