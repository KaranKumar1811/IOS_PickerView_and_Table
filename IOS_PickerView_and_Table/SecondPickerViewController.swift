//
//  SecondPickerViewController.swift
//  IOS_PickerView_and_Table
//
//  Created by MacStudent on 2019-10-29.
//  Copyright © 2019 Karan. All rights reserved.
//

import UIKit

class SecondPickerViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    

    
    
    
  
    @IBOutlet weak var CountryStatePickerView: UIPickerView!
  
    let countryName:[String:[String]]=["India":["Punjab","Haryana","Himachal"],"Canada":["Ontario","Alberta","British Colombia"]]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.CountryStatePickerView.delegate=self
        self.CountryStatePickerView.dataSource=self
        

        // Do any additional setup after loading the view.
    }
    

    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
       if component == 0
       {
        return countryName.keys.count
        }
        return countryName.values.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0
        {
            
            return "\(countryName.keys)"
        }
        return "\(countryName.values)"
    }
    
    
}
