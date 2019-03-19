//
//  NewsFR.swift
//  newsApi
//
//  Created by Iva Cicarevic on 3/19/19.
//  Copyright © 2019 Iva Cicarevic. All rights reserved.
//

import UIKit

class NewsFR: UIViewController {
    
    
    @IBOutlet weak var tableFR: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableFR.dataSource = self
        tableFR.delegate = self
    }
}


extension NewsFR: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return frNews.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if let cell = tableFR.dequeueReusableCell(withIdentifier: "cellFR", for: indexPath) as? DataCell1 {
            
            cell.updateUI(source: frNews[indexPath.row])
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let click = frNews[indexPath.row]
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
