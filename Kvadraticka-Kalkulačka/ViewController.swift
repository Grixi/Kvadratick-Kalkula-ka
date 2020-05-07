import UIKit
class ViewController: UIViewController {
    var a: Double = 0.0
    var b: Double = 0.0
    var c: Double = 0.0
    var resultx1: Double = 0.0
    var resultx2: Double = 0.0
    var diskriminant: Double = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBOutlet var aTextField : UITextField!
    @IBOutlet var bTextField : UITextField!
    @IBOutlet var cTextField : UITextField!
    @IBOutlet weak var x2: UILabel!
    @IBOutlet weak var x1: UILabel!
    @IBAction func Solution(_ sender: Any){
        a = Double(aTextField.text!) ?? 0.0
        b = Double(bTextField.text!) ?? 0.0
        c = Double(cTextField.text!) ?? 0.0
        diskriminant = b * b - (4.0 * a * c)
      if(diskriminant > 0.0) {
          resultx1 = (-b + pow(diskriminant, 0.5)) / (2.0 * a)
          resultx2 = (-b - pow(diskriminant, 0.5)) / (2.0 * a)
          x1.text = String(resultx1)
          x2.text = String(resultx2)
      }
      else {
        x1.text = "Nemá"
        x2.text = "řešení"
      }
    }
}

