//
//  VictimController.swift
//  death_note
//
//  Created by Utilisateur invité on 16/01/2017.
//  Copyright © 2017 Utilisateur invité. All rights reserved.
//

import UIKit

class VictimController: UIViewController {

    var NouvelleVictim = Victim()
    
    @IBOutlet weak var Nom: UITextField!
    @IBOutlet weak var Date: UIDatePicker!
    @IBOutlet weak var Description: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func ToucheDone(_ sender: any) {
        print("nom [\(Nom.text)] date [\(Date.date)] description [\(Description.text)]")
        
        Victim.nom = Nom.text
        Victim.date = Date.date
        Victim.description = Description.text
        if Victim.nom != "" {
            performSegue(segue : "VictimSegue", sender: self)
            
            
        }
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func Prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    

}
