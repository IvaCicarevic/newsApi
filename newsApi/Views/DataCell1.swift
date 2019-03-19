//
//  DataCell1.swift
//  newsApi
//
//  Created by Iva Cicarevic on 3/15/19.
//  Copyright © 2019 Iva Cicarevic. All rights reserved.
//

import UIKit

class DataCell1: UITableViewCell {
    
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var newsDescription: UILabel!
    @IBOutlet weak var newsImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func updateUI(source: Source) {
        
        newsImage.image = UIImage(named: source.id)
        newsDescription.text = source.description
        name.text = source.name
    }

}
