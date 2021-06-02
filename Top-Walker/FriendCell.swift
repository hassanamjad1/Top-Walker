//
//  FriendCell.swift
//  TopWalker
//
//  Created by Hassan Amjad on 5/10/21.
//

import UIKit

class FriendCell: UITableViewCell {

    
    @IBOutlet weak var usernamme: UILabel!
    @IBOutlet weak var imageFriend: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
