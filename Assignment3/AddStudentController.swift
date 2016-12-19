//
//  AddStudentController.swift
//  Assignment3
//
//  Created by Omry Dabush on 17/12/2016.
//  Copyright © 2016 Omry Dabush. All rights reserved.
//

import UIKit

class customLabel: UILabel,Flashable{}
class customaTextField: UITextField,Jitterable{}

class AddStudentController: UIViewController {
    
    var studentDelegate : AddStudentDelegate?


    @IBOutlet weak var studentName: customaTextField!
    @IBOutlet weak var studentLastName: customaTextField!
    @IBOutlet weak var studenID: customaTextField!
    @IBOutlet weak var studentPhone: customaTextField!
    

    @IBOutlet weak var errorLabel: customLabel!

    
    @IBAction func saveButtonWasPressed(_ sender: UIButton) {
        
        if ((self.studentName.text?.isEmpty)! || (self.studentLastName.text?.isEmpty)! || (self.studenID.text?.isEmpty)! || (self.studentPhone.text?.isEmpty)!){
            jitterTextFields()
            errorLabel.flash()
        }else{
            
        let studentToAdd = Student()
            studentToAdd.studetName = self.studentName.text
            studentToAdd.studentLastName = self.studentLastName.text
            studentToAdd.studentID = self.studenID.text
            studentToAdd.studentPhone = self.studentPhone.text
            
            if (self.studentDelegate != nil ){
                self.studentDelegate?.addStudent(student: studentToAdd)
            }
            _ = self.navigationController?.popViewController(animated: true)
        }
    }
    

    @IBAction func clearButtonWasPressed(_ sender: UIButton) {
        self.studentName.text = nil
        self.studentLastName.text = nil
        self.studenID.text = nil
        self.studentPhone.text = nil
    }
    
    func jitterTextFields(){
//        studentName.jitter()
        studentLastName.jitter()
        studenID.jitter()
        studentPhone.jitter()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        errorLabel.alpha = 0.0
        navigationItem.title = "Add Student"
        
    }


}
