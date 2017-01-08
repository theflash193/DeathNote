//
//  DeathNoteTableViewCell.swift
//  death_note
//
//  Created by Utilisateur invité on 14/12/2016.
//  Copyright © 2016 Utilisateur invité. All rights reserved.
//

import UIKit

class DeathNoteTableViewCell: UITableViewCell {
    
    @IBOutlet weak var Nom: UILabel!
    @IBOutlet weak var DateDeces: UILabel!
    @IBOutlet weak var Circonstance: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
