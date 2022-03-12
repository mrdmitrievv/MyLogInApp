import UIKit

class WelcomeUserViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var userLogin: String = ""
    
    // MARK: - Private properties
    private let primaryColor = UIColor(
        red: 210/255,
        green: 109/255,
        blue: 128/255,
        alpha: 1
    )
    private let secondaryColor = UIColor(
        red: 107/255,
        green: 148/255,
        blue: 230/255,
        alpha: 1
    )


    override func viewDidLoad() {
        super.viewDidLoad()

        addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        
        welcomeLabel.text = "Hi, " + userLogin
    }
}

// MARK: - Set background color
extension WelcomeUserViewController {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        view.layer.insertSublayer(gradient, at: 0)
    }
}
