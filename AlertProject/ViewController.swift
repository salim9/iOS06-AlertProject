//
//  ViewController.swift
//  AlertProject
//
//  Created by Salim Uzun on 31.01.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var password2Text: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func signupClicked(_ sender: Any) {
        
        if usernameText.text == "" {
            makeAlert(titleInput: "Error!", messageInput: "Username not found")
        } else if passwordText.text == "" {
            makeAlert(titleInput: "Error!", messageInput: "Password not found")
        } else if passwordText.text != password2Text.text {
            makeAlert(titleInput: "Error!", messageInput: "Passwords don't match")
        } else {
            makeAlert(titleInput: "Succes", messageInput: "Registration completed")
        }
    }
    
    func makeAlert(titleInput: String, messageInput: String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    
}

