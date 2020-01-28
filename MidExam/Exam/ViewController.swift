//
//  ViewController.swift
//  Exam
//
//  Created by grade on 29.11.19.
//  Copyright © 2019 Julieta Ignatova, 81748. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return Model().contats.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! CustomCell
            let dataSourse:Contact = Model().contats[indexPath.row]
            cell.cellLbl.text = dataSourse.name
            //cell.cellImg.image = dataSourse.photo
            cell.cellImg.image = UIImage(named: dataSourse.photo)
            return cell

        }
    
       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
               if segue.identifier == "dataSegue",
                let destVC = segue.destination as? DetailViewController,
                 let cell = sender as? CustomCell,
                let indexPah = tableView.indexPath(for: cell){
                let model = Model().contats[indexPah.row]
                destVC.nameData = model.name
                destVC.imageData = UIImage(named: model.photo)
                destVC.phone = model.phoneNumber
               }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

