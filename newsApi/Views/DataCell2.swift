//
//  DataCell2.swift
//  newsApi
//
//  Created by Iva Cicarevic on 3/18/19.
//  Copyright © 2019 Iva Cicarevic. All rights reserved.
//

import UIKit

class DataCell2: UITableViewCell {
    
    
    @IBOutlet weak var newsImage: UIImageView!
    @IBOutlet weak var newsHeadline: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateUI(news: News) {
        
        newsHeadline.text = news.title
        
        if let url = URL(string: news.urlImage) {
            DispatchQueue.global().async {
                do {
                    let data = try Data(contentsOf: url)
                    DispatchQueue.global().sync {
                        self.newsImage.image = UIImage(data: data)
                    }
                } catch {
                    print("Problem with image")
                }
            }
        } else {
            self.newsImage.image = UIImage()
        }
    }
    
}
    

