//
//  NewsModel.swift
//  newsApi
//
//  Created by Iva Cicarevic on 3/12/19.
//  Copyright © 2019 Iva Cicarevic. All rights reserved.
//

import Foundation
import  UIKit

class News {
    
    private var _author: String!
    private var _title: String!
    private var _description: String!
    private var _url: String!
    private var _urlImage: String!
    
    var author: String {
        get {
            if _author == nil {
                _author = ""
            }
            return _author
        }
        set {
            _author = newValue
        }
    }
    
    var title: String {
        get {
            if _title == nil {
                _title = ""
            }
            return _title
        }
        set {
            _title = newValue
        }
    }
    
    var description: String {
        get {
            if _description == nil {
                _description = ""
            }
            return _description
        }
        set {
            _description = newValue
        }
    }
    
    var url: String {
        get {
            if _url == nil {
                _url = ""
            }
            return _url
        }
        set {
            _url = newValue
        }
    }
    
    var urlImage: String {
        get {
            if _urlImage == nil {
                _urlImage = ""
            }
            return _urlImage
        }
        set {
            _urlImage = newValue
        }
    }
}

