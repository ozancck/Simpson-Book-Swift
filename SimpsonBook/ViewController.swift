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
        
        
        let homer = Simpson(name: "homer", job: "Nuclear safety", image: UIImage(named: "Homer")!)
        let Bart = Simpson(name: "Bart", job: "Student", image:UIImage(named: "Bart")!)
        let Lisa = Simpson(name: "Lisa", job: "houseWife", image: UIImage(named: "Lisa")!)
        let Maggie = Simpson(name: "Maggie", job: "baby", image: UIImage(named: "Maggie")!)
        let Marge = Simpson(name: "Marge", job: "Student", image: UIImage(named: "Marge")!)
        
        let homeArray = [homer, Bart,Lisa,Marge,Maggie]
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

