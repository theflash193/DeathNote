//
//  ViewController.swift
//  death_note
//
//  Created by Utilisateur invité on 13/12/2016.
//  Copyright © 2016 Utilisateur invité. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let victims: [String] = ["Jessie: mort d'asme a 23 ans", "Jonathan: tuer par Dio brando", "Dark vador tuer en ce suicidant avec Dark Sidious"]
    
    @IBOutlet weak var TableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}

