//
//  CountryInformationRepository.swift
//  Country List
//
//  Created by MacBook Pro on 8/6/21.
//

import Foundation
import Alamofire

class CountryInformationRepository: NSObject {
    func getCountryInformation (completion: @escaping ((Bool, [Info]) -> Void)) {

        let urlString = BaseUrl.all.rawValue
        AF.request(urlString , method: .get, encoding: JSONEncoding.default).responseJSON { (Response) in
            switch Response.result {

            case .success( _):

                do {
                    let rawData = try! JSONDecoder().decode([Info].self, from: Response.data!)
                    debugPrint("Download ", rawData[0].name)
                    completion(true, rawData)

                }catch {
                    completion(false, [])
                }
            case .failure(_):
                completion(false, [])
            }
        }
        
    }
//    }
    
//    func getCountryInformation (completion: @escaping ((Bool, [Info]) -> Void)) {
//
//        let urlString = BaseUrl.all.rawValue
//        let url = URL(string: urlString)
//
//        URLSession.shared.dataTask(with: url!) { (data, response1, error) in
//            if error == nil {
//                do{
//                    let jsonValue = try! JSONDecoder().decode([Info].self, from: data!)
//                    debugPrint("DownloAd ", jsonValue)
//                    completion(true, jsonValue)
//
//                }catch {
//
//                    completion(false, [])
//
//                }
//
//            }else {
//                completion(false, [])
//            }
//        }.resume()
//
//    }
    
}
