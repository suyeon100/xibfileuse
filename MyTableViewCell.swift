//
//  MyTableViewCell.swift
//  xib
//
//  Created by 박수연 on 2022/02/18.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var myImageView: UIImageView!
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
        
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
