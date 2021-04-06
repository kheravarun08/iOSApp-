//
//  ViewController.swift
//  SimpleListApp
//
//  Created by Varun Khera on 06/04/21.
//

import UIKit

class ViewController: UITableViewController {

    let alphabet: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
      
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK:- DataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        alphabet.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "ListCell")
        cell.textLabel?.text = "\(alphabet[indexPath.row])"
        cell.detailTextLabel?.text = "\(indexPath.row)"
        return cell
    }

}

