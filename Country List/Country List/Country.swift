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

//    let flags = ["🇨🇬", "🏴", "🇺🇸", "🇵🇹", "🇷🇺"];

func getCountries() -> [Country] {
    let brazil = Country(flag: "🇨🇬", name: "brazil", year: 1998, population: 1985.9, region: "test");
    let pirate = Country(flag: "🏴", name: "pirate", year: 1998, population: 1985.9, region: "test");
    let usa = Country(flag: "🇺🇸", name: "usa", year: 1998, population: 1985.9, region: "test");
    let porto = Country(flag: "🇵🇹", name: "porto", year: 1998, population: 1985.9, region: "test");
    let rus = Country(flag: "🇷🇺", name: "rus", year: 1998, population: 1985.9, region: "test");
    
    return [brazil, pirate, usa, porto, rus];
}
