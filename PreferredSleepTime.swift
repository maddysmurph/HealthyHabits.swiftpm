//
//  PreferredSleepTime.swift
//  HealthyHabits
//
//  Created by Nicole Park on 4/25/24.
//

import SwiftUI

struct preferredSleepTime: View {
    var body: some View {
        Text("Select preferred sleep time.")
        
    }
}
class sleepTime: UIViewController {
    @IBOutlet var textfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let time = Date()
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_gb")
        formatter.dateFormat = "HH:mm:ss"
        textfield.text = formatter.string(from: time)
        textfield.textColor = .link
        
        let timePicker = UIDatePicker()
        timePicker.datePickerMode = .time
        timePicker.addTarget(self, action: #selector(timePickerValueChanged(sender:)), for: UIControl.Event.valueChanged)
        timePicker.frame.size = CGSize(width: 0, height: 250)
        textfield.inputView = timePicker
    }
    @objc func timePickerValueChanged(sender: UIDatePicker)
    {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_gb")
        formatter.dateFormat = "HH:mm:ss"
        textfield.text = formatter.string(from: sender.date)
    }
}
