//
//  NewsDE.swift
//  newsApi
//
//  Created by Iva Cicarevic on 3/19/19.
//  Copyright © 2019 Iva Cicarevic. All rights reserved.
//

import UIKit

class NewsDE: UIViewController {

    
    @IBOutlet weak var tableDE: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableDE.dataSource = self
        tableDE.delegate = self
    }
}


extension NewsDE: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return deNews.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableDE.dequeueReusableCell(withIdentifier: "cellDE", for: indexPath) as? DataCell1 {
            
            cell.updateUI(source: deNews[indexPath.row])
            return cell
        } else {
            return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let click = deNews[indexPath.row]
        performSegue(withIdentifier: "toChosenNews", sender: click)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ChosenNews {
            if let sender = sender as? Source {
                destination.source = sender
            }
        }
    }
}

