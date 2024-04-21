//
//  ViewController.swift
//  StarzPlay
//
//  Created by Mujtaba Hassan on 19/04/2024.
//

import UIKit

class MovieScreenViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        registerNibs()
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    
    private func registerNibs() {
        tableView.register(UINib(nibName: String(describing: HeaderImageViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: HeaderImageViewCell.self))
        tableView.register(UINib(nibName: String(describing: PlayActionBtnsViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: PlayActionBtnsViewCell.self))
        tableView.register(UINib(nibName: String(describing: RatingActionsViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: RatingActionsViewCell.self))
        tableView.register(UINib(nibName: String(describing: SeasonsListingViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: SeasonsListingViewCell.self))
        tableView.register(UINib(nibName: String(describing: EpisodeListViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: EpisodeListViewCell.self))
    }
    @IBAction func screenCastBtnAction(_ sender: Any) {
    }
    
    @IBAction func backBtnAction(_ sender: Any) {
    }
    
    @IBAction func searchBtnAction(_ sender: Any) {
    }
}

extension MovieScreenViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: HeaderImageViewCell.self)) as? HeaderImageViewCell else { return UITableViewCell() }
            return cell
        case 1:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PlayActionBtnsViewCell.self)) as? PlayActionBtnsViewCell else { return UITableViewCell() }
            return cell
        case 2:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: RatingActionsViewCell.self)) as? RatingActionsViewCell else { return UITableViewCell() }
            return cell
//        case 3:
//            guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: SeasonsListingViewCell.self)) as? SeasonsListingViewCell else { return UITableViewCell() }
//            return cell
        default:
            return UITableViewCell()
        }
    }
    

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        switch indexPath.row {
        case 0:
            return 300
        case 1:
            return UITableView.automaticDimension
        case 2:
            return UITableView.automaticDimension
        case 3:
            return UITableView.automaticDimension
        case 4:
            return UITableView.automaticDimension
        default:
            return UITableView.automaticDimension
        }
        
    }
}



