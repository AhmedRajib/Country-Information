//
//  CountryInformationViewModel.swift
//  Country List
//
//  Created by MacBook Pro on 8/6/21.
//

import Foundation

class CountryInformationViewModel {
    
   let repository = CountryInformationRepository()
    var countryInfo: [Info]?
    
    
    func getData(completion: @escaping ((Bool) -> Void)) {
        
        CountryInformationRepository().getCountryInformation { [self] (success, value) in
            if success {
                countryInfo = value
                
                completion(true)
            }else {
                completion(false)
            }
        }
        
    }
    
    
    
    
}
