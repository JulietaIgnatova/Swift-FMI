//
//  ViewControllerTwo.swift
//  AnimationProject
//
//  Created by Julieta Ignatova on 12/2/19.
//  Copyright © 2019 Julieta Ignatova. All rights reserved.
//

import UIKit

class ViewControllerTwo: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let tableData: [String] = ["Milki Way Galaxy","Andromeda Galaxy", "Triangulum Galaxy"]
    
    @IBAction func dissmis(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        transitioningDelegate = self
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}
extension ViewControllerTwo: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        tableView.deselectRow(at: indexPath, animated: true)
//    }
}

extension ViewControllerTwo {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "customSegue",
            let destVC = segue.destination as? DetailViewController,
            let cell = sender as? CustomTableViewCell {
            destVC.nameData = cell.cellLbl?.text
            destVC.imageData = cell.cellImg?.image
        }
    }
}
extension ViewControllerTwo: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as? CustomTableViewCell
            else {
                fatalError()
        }
        cell.cellLbl.text = tableData[indexPath.row]
        cell.cellImg.image = UIImage(named: String(indexPath.row + 1))
        return cell
    }
}

extension ViewControllerTwo: UIViewControllerTransitioningDelegate {
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return AnimationController(animationDuration: 3.5, animationType: .present)
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return AnimationController(animationDuration: 3.5, animationType: .dissmis)
    }
}
