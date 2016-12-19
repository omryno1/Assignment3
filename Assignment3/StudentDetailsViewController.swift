//
//  StudentDetailsViewController.swift
//  Assignment3
//
//  Created by Omry Dabush on 17/12/2016.
//  Copyright © 2016 Omry Dabush. All rights reserved.
//

import UIKit

class StudentDetailsViewController: UIViewController {

    var student = Student()
    
    @IBOutlet weak var studentName: UILabel!
    @IBOutlet weak var studentLastName: UILabel!
    @IBOutlet weak var studentID: UILabel!
    @IBOutlet weak var studentPhone: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAssets()

    }
    func setupAssets(){
        self.studentName.text = student.studetName
        self.studentLastName.text = student.studentLastName
        self.studentID.text = student.studentID
        self.studentPhone.text = student.studentPhone
    }

}
