//
//  VictimController.swift
//  death_note
//
//  Created by Utilisateur invité on 16/01/2017.
//  Copyright © 2017 Utilisateur invité. All rights reserved.
//

import UIKit

class VictimController: UIViewController {

    @IBOutlet weak var Nom: UITextField!
    @IBOutlet weak var Date: UIDatePicker!
    @IBOutlet weak var Description: UITextView!
    var NewVictim = Victim(nom: "", date: "", description: "")

    override func viewDidLoad() {
        super.viewDidLoad()

        //NewVictim = Victim(nom: "", date: "", description: "")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func ToucheDone(_ sender: UIBarButtonItem) {
        print("nom [\(Nom.text)] date [\(Date.date)] description [\(Description.text)]")
        if Nom.text != "" {
           performSegue(withIdentifier: "VictimSegue", sender: self)
        }

    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
            NewVictim = Victim(nom: Nom.text!, date: Date.date.description, description: Description.text!)
        // Pass the selected object to the new view controller.
    }
    

}
