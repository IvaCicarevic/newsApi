//
//  ChosenNews.swift
//  newsApi
//
//  Created by Iva Cicarevic on 3/18/19.
//  Copyright © 2019 Iva Cicarevic. All rights reserved.
//

import UIKit

class ChosenNews: UIViewController {
    
    var source: Source!
    
    
    
    @IBOutlet weak var table2: UITableView!
    @IBOutlet weak var sourceImage: UIImageView!
    @IBOutlet weak var sourceName: UILabel!
    
    
    override func viewWillAppear(_ animated: Bool) {
        allArticles = []
        getArticles()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table2.dataSource = self
        table2.delegate = self
        table2.reloadData()
        sourceName.text = source.name
        sourceImage.image = UIImage(named: source.id)
 
    }
    
    
    func getArticles() {
        chosenSource = source.id
        let articlesURL = "https://newsapi.org/v1/articles?source=\(chosenSource)&apiKey=\(apiKey)"
        
        if let articles_URL = URL(string: articlesURL) {
            print(articles_URL)
            do {
                let content = try NSMutableString(contentsOf: articles_URL, encoding: String.Encoding.utf8.rawValue)
                let jData = content.data(using: String.Encoding.utf8.rawValue)
                
                do {
                    let jsonResult = try JSONSerialization.jsonObject(with: jData!, options: JSONSerialization.ReadingOptions.mutableContainers) as! NSDictionary
                    
                    articles = (jsonResult["articles"] as? NSArray)!
                    
                    for i in 0...articles.count - 1 {
                        
                        let singleArticle = News()
                        let currentArticle = (articles[i] as? NSDictionary)!
                        
                        if let author = currentArticle["author"] as? String {
                            singleArticle.author = author
                        }
                        
                        if let title = currentArticle["title"] as? String {
                            singleArticle.title = title
                        }
                        
                        if let desc = currentArticle["description"] as? String {
                            singleArticle.description = desc
                        }
                        
                        if let url = currentArticle["url"] as? String {
                            singleArticle.url = url
                        }
                        
                        if let urlImage = currentArticle["urlToImage"] as? String {
                            singleArticle.urlImage = urlImage
                        }
                        
                        allArticles.append(singleArticle)
                    }
                } catch {
                    print("Second")
                }
                
            } catch {
                print("First")
            }
        }
    }
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}



extension ChosenNews: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return allArticles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = table2.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as? DataCell2 {
            
            
            cell.updateUI(news: allArticles[indexPath.row])
            return cell
            
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let chosenArticle = allArticles[indexPath.row]

        performSegue(withIdentifier: "toChosenArticle", sender: chosenArticle)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ChosenArticle {
            if let sender = sender as? News {
                destination.news = sender
            }
        }
    }
}

