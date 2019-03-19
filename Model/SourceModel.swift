//
//  SourceModel.swift
//  newsApi
//
//  Created by Iva Cicarevic on 3/12/19.
//  Copyright © 2019 Iva Cicarevic. All rights reserved.
//

import Foundation
import UIKit

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
