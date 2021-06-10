//
//  CountryInfoModel.swift
//  Country List
//
//  Created by MacBook Pro on 8/6/21.
//

import Foundation

// MARK: - WelcomeElement
struct CountryInfoData: Codable {
    let name: String
    let topLevelDomain: [String]
    let alpha2Code, alpha3Code: String
    let callingCodes: [String]
    let capital: String
    let altSpellings: [String]
    let region: String
    let subregion: String
    let population: Int
    let latlng: [Double]
    let demonym: String
    let area, gini: Double?
    let timezones, borders: [String]
    let nativeName: String
    let numericCode: String?
    let currencies: [Currency]
    let languages: [Language]
    let translations: Translations
    let flag: String
    let cioc: String?
}

// MARK: - Currency
struct Currency: Codable {
    let code: String?
    let name: String?
    let symbol: String?
}

// MARK: - Language
struct Language: Codable {
    let iso6391: String?
    let iso6392, name, nativeName: String
}

// MARK: - Translations
struct Translations: Codable {
    let de, es, fr, ja: String?
    let it: String?
    let br, pt: String
    let nl, hr: String?
    let fa: String
}

struct Info: Decodable {
    var name: String
    var capital: String
    var region: String
    var subregion: String
    var population: Int
    var flag: String
}

