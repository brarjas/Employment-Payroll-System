//
//  LoginController.swift
//  Employment Payroll System
//
//  Created by MacStudent on 2018-08-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
        
    
    @IBOutlet weak var txtEmailAddress: UITextField!
    
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var switchRememberMe: UISwitch!
        
        var userDefaults = UserDefaults()
        
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let emailtxt = userDefaults.value(forKey: "email"){
            if let passwordtxt = userDefaults.value(forKey: "password") {
                txtEmailAddress.text = emailtxt as? String
                txtPassword.text = passwordtxt as? String
                
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        perform(#selector(self.btnLogin), with: nil)
        // Dispose of any resources that can be recreated.
    }
     @IBAction func btnLogin(_ sender: Any) {
    
    if ((txtEmailAddress.text?.contains("admin@123"))! && (txtPassword.text?.contains("admin"))!)
        {
            if switchRememberMe.isOn{
                userDefaults.setValue(txtEmailAddress.text, forKey: "email")
                userDefaults.setValue(txtPassword.text, forKey: "password")
            }else{
                userDefaults.removeObject(forKey: "email")
                userDefaults.removeObject(forKey: "password")
            }
            print("Login Successfully")
            performSegue(withIdentifier: "Registration", sender:self )
        }
           
            
        }
    
    
    }
    





