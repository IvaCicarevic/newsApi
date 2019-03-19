//
//  NewsEN.swift
//  newsApi
//
//  Created by Iva Cicarevic on 3/15/19.
//  Copyright © 2019 Iva Cicarevic. All rights reserved.
//

import UIKit

class NewsEN: UIViewController {

    
    @IBOutlet weak var tableEN: UITableView!
    
    override func viewWillAppear(_ animated: Bool) {
        tableEN.dataSource = self
        tableEN.delegate = self
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}


extension NewsEN: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return enNews.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableEN.dequeueReusableCell(withIdentifier: "cellEN", for: indexPath) as? DataCell1 {
            
            
            cell.updateUI(source: enNews[indexPath.row])
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let click = enNews[indexPath.row]
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
