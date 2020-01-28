//
//  ViewController.swift
//  SofiaWeather
//
//  Created by Dragomir Ivanov on 6.12.18.
//  Copyright © 2018 SwiftFMI. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDataSource {

    
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        spinner.startAnimating()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Weather.shared.forecast?.list.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = Weather.shared.forecast?.list[indexPath.row].time
        cell.detailTextLabel?.text = Weather.shared.forecast?.list[indexPath.row].conditions
        cell.imageView?.image = UIImage(named: (Weather.shared.forecast?.list[indexPath.row].imageName)!)
        return cell
    }
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: animated)
        super.viewWillAppear(animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(false, animated: animated)
        super.viewWillDisappear(animated)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if Weather.shared.forecast == nil {
            Weather.shared.requestForecastWithCompletion{
                [weak self] (_) in
                DispatchQueue.main.async {
                    self?.tableView.reloadData()
                }
            }
        }
       
        spinner.hidesWhenStopped = true
         spinner.stopAnimating()
    }
}
