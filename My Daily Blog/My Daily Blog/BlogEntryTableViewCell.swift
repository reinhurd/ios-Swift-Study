//
//  BlogEntryTableViewCell.swift
//  My Daily Blog
//
//  Created by Mikhail Bozhenov on 26.06.2021.
//

import UIKit

class BlogEntryTableViewCell: UITableViewCell {

    @IBOutlet weak var dayTag: UILabel!
    @IBOutlet weak var monthTag: UILabel!
    @IBOutlet weak var entryContentLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
