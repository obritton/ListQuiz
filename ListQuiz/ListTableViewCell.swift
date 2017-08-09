//
//  ListTableViewCell.swift
//  ListQuiz
//
//  Created by Ontario Britton on 8/8/17.
//  Copyright © 2017 Ontario Britton. All rights reserved.
//

import UIKit

class ListTableViewCell : UITableViewCell {
    
    @IBOutlet weak var `switch`: UISwitch!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.switch.setOn(false, animated: false)
    }
}
