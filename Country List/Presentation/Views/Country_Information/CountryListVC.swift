//
//  CountryListVC.swift
//  Country List
//
//  Created by MacBook Pro on 8/6/21.
//

import UIKit

class CountryListVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let vm = CountryInformationViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        countryData ()
    }
    
    func countryData () {
        vm.getData { (success) in
            if success {
                
                DispatchQueue.main.async { [self] in
                    tableView.reloadData()
                }
              
            }else {
                
            }
        }
    }
    
    func setView() {
//        tableView.register(CountryInfoCellTableViewCell.nib, forCellReuseIdentifier: CountryInfoCellTableViewCell.identifier)
        
        
        tableView.register(CountryInfoCellTableViewCell.nib, forCellReuseIdentifier: CountryInfoCellTableViewCell.identifier)
        
        tableView.dataSource = self
        tableView.delegate = self
    }


}
