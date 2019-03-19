//
//  Sources.swift
//  newsApi
//
//  Created by Iva Cicarevic on 3/12/19.
//  Copyright © 2019 Iva Cicarevic. All rights reserved.
//

import Foundation

struct Source: Codable {
    var id: String?
    var description: String?
    var language: String?
    var name: String?
}


struct News: Codable {
    var author: String?
    var title: String?
    var description: String?
    var url: String?
    var urlImage: String?
    
}

//var apiKey = "bb06aad23d7243daa7002d8ab5d09d8f"
var generalURL = "https://newsapi.org/v1/sources"


var chosenSource = ""

var allNews: [Source]?
var enNews: [Source]?
var deNews: [Source]?
var frNews: [Source]?
var allSources: [NSArray]?
var articles: [NSArray]?
var allArticles: [News]?
