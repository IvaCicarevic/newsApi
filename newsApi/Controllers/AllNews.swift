//
//  AllNews.swift
//  newsApi
//
//  Created by Iva Cicarevic on 3/15/19.
//  Copyright © 2019 Iva Cicarevic. All rights reserved.
//

import UIKit

class AllNews: UIViewController {
    
    
    @IBOutlet weak var table1: UITableView!
    
    override func viewWillAppear(_ animated: Bool) {
        
        getNewsAPI()
        sortNews()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table1.dataSource = self
        table1.delegate = self
       
    }
    
    
    
    
    
    func getNewsAPI() {
        
        if let general_URL = URL(string: generalURL) {
            do {
                let content = try NSMutableString(contentsOf: general_URL, encoding: String.Encoding.utf8.rawValue)
                let jData = content.data(using: String.Encoding.utf8.rawValue)
                
                do {
                    let jsonResult = try JSONSerialization.jsonObject(with: jData!, options: JSONSerialization.ReadingOptions.mutableContainers) as! NSDictionary
                    
                    allSources = (jsonResult["sources"] as? NSArray)!
                    
                    for i in 0...(allSources.count) - 1 {
                        
                        let singleSource = Source()
                        let currentSource = (allSources[i] as? NSDictionary)!
                        
                        if let id = currentSource["id"] as? String {
                            singleSource.id = id
                        }
                        
                        if let desc = currentSource["description"] as? String {
                            singleSource.description = desc
                        }
                        
                        if let lang = currentSource["language"] as? String {
                            singleSource.language = lang
                            
                        }
                        
                        if let name = currentSource["name"] as? String {
                            singleSource.name = name
                        }
                        
                        allNews.append(singleSource)
                    }
                    
                } catch {
                    print("Second")
                }
                
            } catch {
                print("First")
            }
            
        }
    }
    
    func sortNews() {
        
        for i in allNews {
            if i.language == "en" {
                enNews.append(i)
            } else if i.language == "de" {
                deNews.append(i)
            }
        }
        
    }
    
}

extension AllNews: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allNews.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = table1.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as? DataCell1 {
            
            
            
            cell.updateUI(source: allNews[indexPath.row])
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let click = allNews[indexPath.row]
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

