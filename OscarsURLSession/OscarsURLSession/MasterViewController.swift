//
//  MasterViewController.swift
//  OscarsURLSession
//
//  Created by Julieta Ignatova on 12/5/19.
//  Copyright © 2019 Julieta Ignatova. All rights reserved.
//

import UIKit

struct Movie: Decodable {
    let title: String
    let storyline: String
    let poster: String
}

struct Recepient: Decodable  {
    let name: String
    let picture: String
}

struct Nomination: Decodable  {
    let movie: Movie
    let sentiment: String
    let recepient: Recepient?
}

struct Category: Decodable  {
    let name: String
    let nominees: [Nomination]
}

struct Predictions: Decodable  {
    enum CodingKeys: String, CodingKey {
        case categiries = "predictions"
    }
    let categiries: [Category]

}

final class Networking {
    private init() { }
    
    static func getPredictions(completion: @escaping (Predictions?) -> ()){
        let url = "https://swiftfmi.github.io/iOS_2019_2020/oscars_2020/oscars_2020.json"
        
        //UIApplication.shared.isNetworkActivityIndicatorVisible = true
        
        URLSession.shared.dataTask(with: URL(string: url)!) { (data, _,error) in
            
            //UIApplication.shared.isNetworkActivityIndicatorVisible = false
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            
            do {
                let predictions = try JSONDecoder().decode(Predictions.self, from: data)
                completion(predictions)
            }
            catch {
                print(error)
                completion(nil)
            }
           
            
        }.resume()
    }
}

class MasterViewController: UITableViewController {

    var detailViewController: DetailViewController? = nil
    var model: Predictions?


    override func viewDidLoad() {
        super.viewDidLoad()
        
        Networking.getPredictions { [weak self] (predictions) in
            DispatchQueue.main.async {
                self?.model = predictions
                self?.tableView.reloadData()
            }
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        clearsSelectionOnViewWillAppear = true
        super.viewWillAppear(animated)
    }

  

    // MARK: - Segues

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let cell = sender as? UITableViewCell,
                let indexPath = tableView.indexPath(for: cell) {
                let object = model?.categiries[indexPath.section].nominees[indexPath.row]
                let controller = (segue.destination as! UINavigationController).topViewController as! DetailViewController
                controller.detailItem = object
                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        }
    }

    // MARK: - Table View

    override func numberOfSections(in tableView: UITableView) -> Int {
        return model?.categiries.count ?? 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model?.categiries[section].nominees.count ?? 0
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let object = model?.categiries[section]
        return object?.name
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        let object = model?.categiries[indexPath.section].nominees[indexPath.row]
        cell.textLabel?.text = object?.movie.title
        cell.detailTextLabel?.text = object?.recepient?.name
        return cell
    }


}

