//
//  ModelAll.swift
//  newsApi
//
//  Created by Iva Cicarevic on 3/12/19.
//  Copyright © 2019 Iva Cicarevic. All rights reserved.
//

import Foundation

class Source {
    
    private var _id: String!
    private var _name: String!
    private var _description: String!
    private var _language: String!
    private var _country: String!
    
    var id: String {
        get {
            if _id == nil {
                _id = ""
            }
            return _id
        }
        set {
            _id = newValue
        }
    }
    
    
    var name: String {
        get {
            if _name == nil {
                _name = ""
            }
            return _name
        }
        set {
            _name = newValue
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
    
    var language: String {
        get {
            if _language == nil {
                _language = ""
            }
            return _language
        }
        set {
            _language = newValue
        }
    }
    
    
    var country: String {
        get {
            if _country == nil {
                _country = ""
            }
            return _country
        }
        set {
            _country = newValue
        }
    }
    
}


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

var apiKey = "bb06aad23d7243daa7002d8ab5d09d8f"
var generalURL = "https://newsapi.org/v1/sources"


var chosenSource = ""

var allNews: [Source] = []
var enNews: [Source] = []
var deNews: [Source] = []
var allSources: NSArray = []
var articles: NSArray = []
var allArticles: [News] = []

