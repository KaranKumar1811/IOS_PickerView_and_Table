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
    
    var st1 : String?
    var st2 : String?

    let countries = ["India","Canada","USA","China","Pakistan","Russia","Nepal","France","Mexico"]
    let currency = ["Rupees","CAD","USD","YAN","Prupee","Euro","NRupees","euro","dollor"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.PickerUI.delegate = self
        self.PickerUI.dataSource = self
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
        return countries.count
        }
        
        return currency.count
    }

    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0
        {
        return self.countries[row]
        }

        return self.currency[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {

        let row1=pickerView.selectedRow(inComponent: 0)
        let row2 = pickerView.selectedRow(inComponent: 1)
        
        let v1=self.countries[row1]
        let v2=self.currency[row2]
        
        CountryLabel.text="\(v1) - \(v2)"
        
        
        
        
        //        if component == 0
//        {
//        CountryLabel.text = "Country : \(self.countries[row])"
//        print(self.countries[row])
//        }
//        else
//        {
//            CountryLabel.text=CountryLabel.text!+"\(self.currency[row])"
//        }
//        if component == 0
//        {
//        st1 = self.countries[row]
//            CountryLabel.text = "Country : \(String(describing: st1!)) Currency : \(String(describing: st2!))"
//        }
//        else{
//        st2 = self.currency[row]
//            CountryLabel.text = "Country : \(String(describing: st1!)) Currency : \(String(describing: st2!))"
//        }
        
        print(self.currency[row])
    }
}

