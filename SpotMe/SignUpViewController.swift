// Author: Jonathan Chan

import UIKit

class SignUpViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var SportPicker: UIPickerView!
    //@IBOutlet weak var BirthdayDatePicker: UIDatePicker!
    
    var sportPickerData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // connect data
        self.SportPicker.delegate = self
        self.SportPicker.dataSource = self
        
        // data for the SportPicker
      sportPickerData = ["Weightlifting", "Running", "Basketball"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // data source
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        //return pickerData.count
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return sportPickerData.count
    }

    // delegate
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return sportPickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("You have selected: \(sportPickerData[row])")
    }
 
}

