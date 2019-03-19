//
//  DataCellEN.swift
//  newsApi
//
//  Created by Iva Cicarevic on 3/15/19.
//  Copyright © 2019 Iva Cicarevic. All rights reserved.
//

import UIKit

class DataCellEN: UITableViewCell {
    
    
    @IBOutlet weak var imageNewsEN: UIImageView!
    @IBOutlet weak var nameNewsEN: UILabel!
    @IBOutlet weak var newDescriptionEN: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
