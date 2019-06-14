//
//  ViewController.swift
//  HealthAppDemo
//
//  Created by Paul Solt on 6/14/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()


        tableView.delegate = self
        tableView.dataSource = self
        
        
        // Register cell
        let walkingCell = UINib(nibName: "WalkingTableViewCell", bundle: nil)
        tableView.register(walkingCell, forCellReuseIdentifier: "WalkingCell")

    }
    
    
}

extension ViewController: UITableViewDelegate {
    
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WalkingCell", for: indexPath)
        
        return cell
    }
    
    
}


