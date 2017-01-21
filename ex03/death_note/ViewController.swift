//
//  ViewController.swift
//  death_note
//
//  Created by Utilisateur invité on 13/12/2016.
//  Copyright © 2016 Utilisateur invité. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var Listes_victimes = [Victim]()
    
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
        return Listes_victimes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = TableView.dequeueReusableCell(withIdentifier: "Victim")! as! DeathNoteTableViewCell
        
        cell.Nom.text = Listes_victimes[indexPath.row].nom
        cell.DateDeces.text = Listes_victimes[indexPath.row].date
        cell.Circonstance.text = Listes_victimes[indexPath.row].description
        
        return cell
     }
}

