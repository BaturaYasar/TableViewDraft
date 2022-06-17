//
//  FirstPageCell.swift
//  TwoPagesProject
//
//  Created by Mehmet Baturay Yasar on 17/05/2022.
//

import UIKit

class FirstPageCell: UITableViewCell {

    @IBOutlet weak var firstPageImage: UIImageView!
    
    @IBOutlet weak var firstPageLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
