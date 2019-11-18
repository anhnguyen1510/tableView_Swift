//
//  TableViewCell.swift
//  HomeWork10
//
//  Created by Anhnguyen on 11/18/19.
//  Copyright © 2019 Anhnguyen. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var avatarUser: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userAgeLabel: UILabel!
    
    var user: User?{
        didSet{
            if let user = user{
                avatarUser.image = UIImage(named: user.iconName)
                userNameLabel.text = user.name
                userAgeLabel.text = String(user.age)
            }
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
