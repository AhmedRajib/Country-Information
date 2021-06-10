//
//  CountryInformationVCExtension.swift
//  Country List
//
//  Created by MacBook Pro on 8/6/21.
//

import UIKit

extension CountryListVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        vm.countryInfo?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryInfoCellTableViewCell", for: indexPath) as! CountryInfoCellTableViewCell
        
////        cell.countryName.text = vm.countryInfo![indexPath.row].name
//        cell.flagImage.loadImageUsingCache(withUrl: vm.countryInfo![indexPath.row].flag)
////        cell.textLabel!.text = vm.countryInfo![indexPath.row].name
        
        cell.loadCountryName = vm.countryInfo![indexPath.row].name
        cell.loadImage = vm.countryInfo![indexPath.row].flag
//        cell.
        
        return cell
    }
    
    
  
}
