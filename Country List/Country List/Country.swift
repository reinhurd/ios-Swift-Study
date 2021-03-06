//
//  Country.swift
//  Country List
//
//  Created by Mikhail Bozhenov on 22.06.2021.
//

import Foundation

struct Country {
    var flag = "";
    var name = "";
    var year = 0;
    var population = 0.0;
    var region = "";
}

//    let flags = ["π¨π¬", "π΄", "πΊπΈ", "π΅πΉ", "π·πΊ"];

func getCountries() -> [Country] {
    let brazil = Country(flag: "π¨π¬", name: "brazil", year: 1998, population: 1985.9, region: "test");
    let pirate = Country(flag: "π΄", name: "pirate", year: 1998, population: 1985.9, region: "test");
    let usa = Country(flag: "πΊπΈ", name: "usa", year: 1998, population: 1985.9, region: "test");
    let porto = Country(flag: "π΅πΉ", name: "porto", year: 1998, population: 1985.9, region: "test");
    let rus = Country(flag: "π·πΊ", name: "rus", year: 1998, population: 1985.9, region: "test");
    
    return [brazil, pirate, usa, porto, rus];
}
