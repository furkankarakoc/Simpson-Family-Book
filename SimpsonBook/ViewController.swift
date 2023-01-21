//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Furkan Karakoc on 21.01.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var mySimpsons = [SimpsonFamily]()
    var chosenSimpson : SimpsonFamily?
     
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        let homer = SimpsonFamily(nameSimpson: "Homer Simpson", jobSimpson: "Nuclear Safety", imageSimpson: UIImage(named: "homer")!)
        let abraham = SimpsonFamily(nameSimpson: "Abraham Simpson", jobSimpson: "Grandfather", imageSimpson: UIImage(named: "abraham")!)
        let bart = SimpsonFamily(nameSimpson: "Bart Simpson", jobSimpson: "Student", imageSimpson: UIImage(named: "bart")!)
        let cyrus = SimpsonFamily(nameSimpson: "Cyrus Simpson", jobSimpson: "Navy Pilot", imageSimpson: UIImage(named: "cyrus")!)
        let jacqueline = SimpsonFamily(nameSimpson: "Jacqueline Simpson", jobSimpson: "Grandmother", imageSimpson: UIImage(named: "jacqueline")!)
        let lisa = SimpsonFamily(nameSimpson: "Lisa Simpson", jobSimpson: "Student", imageSimpson: UIImage(named: "lisa")!)
        let maggie = SimpsonFamily(nameSimpson: "Maggie Simpson", jobSimpson: "Baby", imageSimpson: UIImage(named: "maggie")!)
        let marge = SimpsonFamily(nameSimpson: "Marge Simpson", jobSimpson: "House Wife", imageSimpson: UIImage(named: "marge")!)
        let snowball = SimpsonFamily(nameSimpson: "Snowball Simpson", jobSimpson: "Cat", imageSimpson: UIImage(named: "snowball")!)
        
        mySimpsons.append(homer)
        mySimpsons.append(abraham)
        mySimpsons.append(bart)
        mySimpsons.append(cyrus)
        mySimpsons.append(jacqueline)
        mySimpsons.append(lisa)
        mySimpsons.append(maggie)
        mySimpsons.append(marge)
        mySimpsons.append(snowball)
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
        self.performSegue(withIdentifier: "toSecondVC", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let destinationVC = segue.destination as! detailVC
            destinationVC.selectesSimpson = chosenSimpson
        }
    }
    

}

