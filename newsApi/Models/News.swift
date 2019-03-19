//
//  News.swift
//  newsApi
//
//  Created by Iva Cicarevic on 3/12/19.
//  Copyright © 2019 Iva Cicarevic. All rights reserved.
//

import Foundation


struct News: Codable {
    var author: String?
    var title: String?
    var description: String?
    var url: String?
    var urlImage: String?
    
}
