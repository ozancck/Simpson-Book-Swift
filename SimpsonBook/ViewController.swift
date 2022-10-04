//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Ozan Çiçek on 30.09.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var TABLEviEW: UITableView!
    
    var chosenSimpson: Simpson?
    
    var mySimpsons = [Simpson]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        TABLEviEW.delegate = self
        TABLEviEW.dataSource = self
        
        
        let homer = Simpson(name: "Homer Simpson", job: "Nuclear safety", image: UIImage(named: "Homer")!)
        let Bart = Simpson(name: "Bart Simpson", job: "Student", image:UIImage(named: "Bart")!)
        let Lisa = Simpson(name: "Lisa Simpson", job: "houseWife", image: UIImage(named: "Lisa")!)
        let Maggie = Simpson(name: "Maggie Simpson", job: "baby", image: UIImage(named: "Maggie")!)
        let Marge = Simpson(name: "Marge Simpson", job: "Student", image: UIImage(named: "Marge")!)
        
        mySimpsons.append(homer)
        mySimpsons.append(Bart)
        mySimpsons.append(Lisa)
        mySimpsons.append(Maggie)
        mySimpsons.append(Marge)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text = mySimpsons[indexPath.row].name
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = mySimpsons[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedSimpson = chosenSimpson
        }
    }


}

