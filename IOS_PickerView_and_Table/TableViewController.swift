//
//  TableViewController.swift
//  IOS_PickerView_and_Table
//
//  Created by MacStudent on 2019-10-29.
//  Copyright © 2019 Karan. All rights reserved.
//

import UIKit

class TableViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    let countryName=["India","Punjab","Haryana","Himachal","Canada","Ontario","Alberta","British Colombia"]
    
    @IBOutlet weak var TableViewUI: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         self.TableViewUI.delegate=self
        self.TableViewUI.dataSource=self
        // Do any additional setup after loading the view.
    }
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countryName.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text=countryName[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(countryName[indexPath.row])
    }

    
    
//    func numberOfComponents(in pickerView: UIPickerView) -> Int {
//        return 1
//    }
//
//    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        if component == 0
//        {
//            return countryName.keys.count
//        }
//        return countryName.values.count
//    }
//
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        if component == 0
//        {
//
//            return "\(countryName.keys)"
//        }
//        return "\(countryName.values)"
   // }
}
