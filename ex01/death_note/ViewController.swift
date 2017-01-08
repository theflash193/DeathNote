//
//  ViewController.swift
//  death_note
//
//  Created by Utilisateur invité on 13/12/2016.
//  Copyright © 2016 Utilisateur invité. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let Nom = ["Ceasar zepelli", "Diego Brando", "Jonathan Joestar"]
    let Date = ["JoJo Partie 2", "JoJo Part 7", "JoJo Part 1"]
    let Circonstance = ["Tuer lors de son combat avec Wahmu", "Tuer ingenieusement par Lucy Steel, concequance du pouvoir de Funny Valentine", "Tuer par Dio par surprise lors de la croisiere de Noces par des Rayons reçu dans la gorges"]
    
    @IBOutlet weak var TableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Nom.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = TableView.dequeueReusableCell(withIdentifier: "Victim")! as! DeathNoteTableViewCell
        
        cell.Nom.text = Nom[indexPath.row]
        cell.DateDeces.text = Date[indexPath.row]
        cell.Circonstance.text = Circonstance[indexPath.row]
    
        return cell
     }
}

