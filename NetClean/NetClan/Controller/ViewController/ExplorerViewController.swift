//
//  ExplorerViewController.swift
//  NetClan
//
//  Created by Suvendu Kumar on 10/09/23.
//

import UIKit

class ExplorerViewController: UIViewController {
    
    var flagCell: Int = 1
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var segmented: UISegmentedControl!
    private var allUser: [UserDetails] = UserObj.sharedDetails
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        navigationController?.navigationBar.isHidden = true
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        flagCell = 1 // Set the default flagCell value
        tableView.estimatedRowHeight = 220 // Set the default row height
        tableView.rowHeight = 220
        
        // Reload the table view with the default data
        tableView.reloadData()
        
       
        
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        navigationController?.navigationBar.isHidden = false
    }
    
    @IBAction func SegmentButton(_ sender: UISegmentedControl) {
        let selectedSegment = sender.selectedSegmentIndex
        switch selectedSegment {
        case 0:
            flagCell = 1
            tableView.estimatedRowHeight = 220
            tableView.rowHeight = 220
        
            tableView.reloadData()
        case 1:
            flagCell = 2
            tableView.estimatedRowHeight = 220
            tableView.rowHeight = 220
        
            tableView.reloadData()
        default:
           flagCell = 3
            tableView.estimatedRowHeight = 420
            tableView.rowHeight = 420
            tableView.reloadData()
           
        }
        
    }
    
    
}
    extension ExplorerViewController: UITableViewDelegate, UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            if flagCell == 3 {
                return 1
            }
            return allUser.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let cell2 = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier) as? TableViewCell else { return UITableViewCell() }
            
            guard let cell = tableView.dequeueReusableCell(withIdentifier: ShowUserTableViewCell.identifier) as? ShowUserTableViewCell else { return UITableViewCell() }
            guard let cell3 = tableView.dequeueReusableCell(withIdentifier: MerchantTableViewCell.identifier) as? MerchantTableViewCell else { return UITableViewCell() }
            
            if flagCell == 1 {
                let user = allUser[indexPath.row]
                cell.UserImageView.image = UIImage(named: user.userImageData)
                cell.UserName.text = user.userNameData
                cell.UserLocation.text = user.userLocationData
                cell.UserDesignation.text = user.userDesignationData
                return cell
            }
            else if flagCell == 2 {
               let user = allUser[indexPath.row]
                cell2.SecondImage.image = UIImage(named: user.userImageData)
                cell2.SecondBusinessName.text = user.userNameData
                cell2.SecondBusinessLocation.text = user.userLocationData
                cell2.SecondDistance.text = user.userDistanceData
                return cell2
            }
            else {
                 return cell3
            }
        }
    }
    
    extension ExplorerViewController {
        private func setupTableView() {
            tableView.register(ShowUserTableViewCell.nib, forCellReuseIdentifier: ShowUserTableViewCell.identifier)
            tableView.register(TableViewCell.nib, forCellReuseIdentifier: TableViewCell.identifier)
            tableView.register(MerchantTableViewCell.nib, forCellReuseIdentifier: MerchantTableViewCell.identifier)
           
           
//                tableView.estimatedRowHeight = 220
//                tableView.rowHeight = 220
//
        }
    }

