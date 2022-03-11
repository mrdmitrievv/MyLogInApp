import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    let user = User.getUserData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func logInButton() {
        guard
            loginTextField.text == user.login,
            passwordTextField.text == user.password
        else {
            showAlert(
                title: "Incorrect login or password",
                message: "Please, enter correct login or password",
                textField: passwordTextField)
            return
        }
        
        performSegue(withIdentifier: "logIn", sender: .none)
    }
    
    
    @IBAction func forgotUserNameButton() {
        showAlert(
            title: "Oops",
            message: "Just remember, your login is \(user.login)"
        )
    }
    
    @IBAction func forgotPasswordButton() {
        showAlert(
            title: "Oops",
            message: "Just remember, your password is \(user.password)"
        )
    }
    
    @IBAction func unwindSegue(_ sender: UIStoryboardSegue) {
        loginTextField.text = ""
        passwordTextField.text = ""
    }
}

extension LoginViewController {
    func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in textField?.text = nil }
        alert.addAction(okAction)
        
        textField?.text = nil
        present(alert, animated: true)
    }
}
