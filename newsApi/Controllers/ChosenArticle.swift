//
//  ChosenArticle.swift
//  newsApi
//
//  Created by Iva Cicarevic on 3/18/19.
//  Copyright © 2019 Iva Cicarevic. All rights reserved.
//

import UIKit

class ChosenArticle: UIViewController, UIWebViewDelegate {
    
    
    var news: News!
    
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadURL()
        webView.delegate = self

    }
    
    func loadURL() {
        let url = URL(string: news.url)
        let urlRequest = URLRequest(url: url!)
        
        webView.loadRequest(urlRequest)
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        indicator.startAnimating()
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        indicator.stopAnimating()
        
    }

    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}
