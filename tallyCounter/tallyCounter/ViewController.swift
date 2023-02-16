import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var numberDisplay: UILabel!
    @IBOutlet var segmentNumberController: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func IncreaseButtonPressed(_ sender: Any) {
        switch segmentNumberController.selectedSegmentIndex {
        case 0: numberDisplay.text = String(Int(numberDisplay.text!)! + 1)
        case 1: numberDisplay.text = String(Int(numberDisplay.text!)! + 5)
        case 2: numberDisplay.text = String(Int(numberDisplay.text!)! + 10)
        case 3: numberDisplay.text = String(Int(numberDisplay.text!)! + 100)
        default:
            print("error in increase button")
        }
    }
    
    @IBAction func DecreaseButtonPressed(_ sender: Any) {
        switch segmentNumberController.selectedSegmentIndex {
        case 0: numberDisplay.text = String(Int(numberDisplay.text!)! - 1)
        case 1: numberDisplay.text = String(Int(numberDisplay.text!)! - 5)
        case 2: numberDisplay.text = String(Int(numberDisplay.text!)! - 10)
        case 3: numberDisplay.text = String(Int(numberDisplay.text!)! - 100)
        default:
            print("error in decrease button")
        }
    }
    
    @IBAction func ResetButtonPressed(_ sender: Any) {
        numberDisplay.text = "0"
        print(segmentNumberController.selectedSegmentIndex)
    }
}
