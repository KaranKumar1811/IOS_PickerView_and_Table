//
//  ViewController.swift
//  IOS_PickerView_and_Table
//
//  Created by MacStudent on 2019-10-29.
//  Copyright © 2019 Karan. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource{
    
    @IBOutlet weak var PickerUI: UIPickerView!
    
    @IBOutlet weak var CountryLabel: UILabel!
    
    

    let countries = ["India","Canada","USA","China","Pakistan","Russia","Nepal","France","Mexico"]
    let currency = ["Rupees","CAD","USD","YAN","Prupee","Euro","NRupees","euro","dollor"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.PickerUI.delegate = self
        self.PickerUI.dataSource = self
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 1{
        return countries.count
        }
        else
        {
        return currency.count
        }
    }

    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 1
        {
        return self.countries[row]
        }
        else
        {
        return self.currency[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 1{
        CountryLabel.text = self.countries[row]
        print(self.countries[row])
        }
        else{
            print(self.currency[row])
        }
        
    }
}

