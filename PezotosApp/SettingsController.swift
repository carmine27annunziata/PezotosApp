//
//  SettingsController.swift
//  PezotosApp
//
//  Created by Paolo Minopoli on 11/12/2018.
//  Copyright © 2018 Pezotos. All rights reserved.
//
import UIKit

class SettingsController: UITableViewController {
    
    let array = ["Name:", "Age:", "Weight:", "Sex:"]
    let cellReuseIdentifier = "cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    
    
    
    // Set the spacing between sections
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 35
    }
    
    // Make the background color show through
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.clear
        return headerView
    }
    
    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.array.count
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
        
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingsCell") as! SettingsCell
        cell.label?.text = self.array[indexPath.section]
        
        //cell.setChallenge(challenge: challenge)
        
        
        cell.layer.cornerRadius = 40
        cell.layer.masksToBounds = true
        
        
        
        
        return cell
    }
    
    
}
