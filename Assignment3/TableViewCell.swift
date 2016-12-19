//
//  TableViewCell.swift
//  Assignment3
//
//  Created by Omry Dabush on 17/12/2016.
//  Copyright © 2016 Omry Dabush. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var studenName: UILabel!
    @IBOutlet weak var studentLastName: UILabel!
    
    var student : Student?{
        didSet{
            self.studenName.text = student?.studetName
            self.studentLastName.text = student?.studentLastName
        }
    }
    
}
