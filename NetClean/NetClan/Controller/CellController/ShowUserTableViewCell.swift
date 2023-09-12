//
//  ShowUserTableViewCell.swift
//  NetClan
//
//  Created by Suvendu Kumar on 10/09/23.
//

import UIKit

class ShowUserTableViewCell: UITableViewCell {
    
    static let identifier = String(describing: ShowUserTableViewCell.self)
    static let nib = UINib(nibName: identifier, bundle: nil)

    @IBOutlet weak var UserImageView: UIImageView!
    @IBOutlet weak var UserName: UILabel!
    @IBOutlet weak var UserLocation: UILabel!
    @IBOutlet weak var UserDesignation: UILabel!
    @IBOutlet weak var UserDistance: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        contentView.backgroundColor = .white
    }
}
