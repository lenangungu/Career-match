//
//  SkillsTableViewCell.swift
//  Career Match
//
//  Created by Lena Ngungu on 10/29/16.
//  Copyright © 2016 Lena Ngungu. All rights reserved.
//

import UIKit

class SkillsTableViewCell: UITableViewCell {
    @IBOutlet weak var skillsCellLabel: UILabel!

    var cellIndex: Int? 
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
