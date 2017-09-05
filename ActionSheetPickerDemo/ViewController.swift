import UIKit
// import忘れないように
import CoreActionSheetPicker

class ViewController: UIViewController {
    @IBOutlet weak var result: UILabel!

    @IBAction func inputButton(_ sender: Any) {
        let timePicker = ActionSheetDatePicker(title: "Date:", datePickerMode: UIDatePickerMode.date, selectedDate: Date(), doneBlock: {
            picker, value, index in
            
            let formatter = DateFormatter()
            formatter.dateFormat = "a hh時mm分"
            self.result.text = formatter.string(for: value)
            print("value = \(value)")
            print("index = \(index)")
            print("picker = \(picker)")
            return
        }, cancel: { ActionStringCancelBlock in
            print("cancel")
            return }, origin: self.view)
        timePicker?.minuteInterval = 5
        timePicker?.locale = Calendar.current.locale
        timePicker?.show()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

