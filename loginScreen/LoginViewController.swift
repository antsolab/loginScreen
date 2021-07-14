//
//  ViewController.swift
//  loginScreen
//
//  Created by Andrey on 13.07.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
        
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcomeName = userNameTF.text!
        if let welcome = userNameTF.text {
            welcomeVC.welcomeName = welcome
        }
    }

    @IBAction func loginAction() {
        if userNameTF.text == "User" && passwordTF.text == "Password" {
            return
        } else {
            showAlert(title: "Error", message: "All text fields must be filled")
        }
    }
    
    @IBAction func forgotUserNameAction() {
        showAlert(title: "Oops!", message: "Your name is: User")
    }
    
    @IBAction func forgotPasswordAction() {
        showAlert(title: "Oops!", message: "Your password is: Password")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let _ = segue.source as? WelcomeViewController else { return }
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
}

extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
