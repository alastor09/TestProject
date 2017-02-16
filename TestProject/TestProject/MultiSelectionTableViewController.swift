//
//  MultiSelectionTableViewController.swift
//  TestProject
//
//  Created by Soan Saini on 16/2/17.
//  Copyright © 2017 Soan Saini. All rights reserved.
//

import UIKit

class MultiSelectionTableViewController: UITableViewController {

    let dataArray:[String] = ["Row one","Row Two","Row Three","Row Four","Row Five"]
    
    var selectedCells: [UITableViewCell] = []

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as UITableViewCell
        cell.textLabel?.text = dataArray[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedCells.append(tableView.cellForRow(at: indexPath)!)
    }
    
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let deselectedRow = tableView.cellForRow(at: indexPath)
        if(selectedCells.contains(deselectedRow!)){
            let indx = selectedCells.index(of: deselectedRow!)
            selectedCells.remove(at: indx!)
        }
    }
}
