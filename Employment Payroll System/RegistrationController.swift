//
//  RegistrationController.swift
//  Employment Payroll System
//
//  Created by MacStudent on 2018-08-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class RegistrationController: UIViewController {
    
    
    
    
    @IBOutlet weak var txtEmailAddress: UITextField!
    
    
    @IBOutlet weak var txtPassowrd: UITextField!
    
    
   
    @IBOutlet weak var txtConfirmPassword: UITextField!
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
         self.navigationController?.setNavigationBarHidden(true, animated: true)
        // Do any additional setup after loading the view, typically from a nib.
    }
    func isValidEmail(testStr:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnRegister(_ sender: Any) {
        
       
    

}
}
