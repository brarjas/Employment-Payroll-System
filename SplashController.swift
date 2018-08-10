//
//  SplashController.swift
//  Employment Payroll System
//
//  Created by MacStudent on 2018-08-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class SplashController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        perform(#selector(self.goToLoginScreen), with: nil, afterDelay: 2)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    @objc func goToLoginScreen()
    {
        performSegue(withIdentifier: "LoginScreen", sender:self )
    }


}
