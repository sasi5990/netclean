//
//  TableViewCell.swift
//  NetClan
//
//  Created by Suvendu Kumar on 11/09/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var SecondImage: UIImageView!
    @IBOutlet weak var SecondDistance: UILabel!
    @IBOutlet weak var SecondBusinessName: UILabel!
    @IBOutlet weak var SecondBusinessLocation: UILabel!   
    
    static let nib = UINib(nibName: "TableViewCell", bundle: nil)
    static let identifier = "TableViewCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        contentView.backgroundColor = .white
    }
    
}
