//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Ozan Çiçek on 30.09.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var TABLEviEW: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        TABLEviEW.delegate = self
        TABLEviEW.dataSource = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text = "ozannn"
        
        return cell
    }


}

