//
//  LoginScreenViewController.swift
//  Twitter
//
//  Created by Alexis Chen on 2/11/20.
//  Copyright © 2020 Dan. All rights reserved.
//

import UIKit

class LoginScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    //exacute when the button is taped
    @IBAction func tapLoginButton(_ sender: Any) {
        
        let myURL = "https://api.twitter.com/oauth/request_token" //this is the twiiter ul
        //call the twitter api
        TwitterAPICaller.client?.login(url: myURL, success: {
            self.performSegue(withIdentifier: "loginToHome", sender: self)
        }, failure: { (Error) in
            print("could not login in")
        })
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
