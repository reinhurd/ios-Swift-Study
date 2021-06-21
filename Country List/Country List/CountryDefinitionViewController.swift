//
//  CountryDefinitionViewController.swift
//  Country List
//
//  Created by Mikhail Bozhenov on 22.06.2021.
//

import UIKit

class CountryDefinitionViewController: UIViewController {

    @IBOutlet weak var bigFlagLabel: UILabel!
    
    @IBOutlet weak var countryDefinitionLabel: UILabel!
    
    var country = "🇨🇦";
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bigFlagLabel.text = country;
        
        let flags = ["Brazil": "🇨🇬", "Pirate": "🏴", "USA": "🇺🇸", "Portuguese": "🇵🇹","Russia": "🇷🇺"];
        for (countryName, flag) in flags {
            if country == flag {
                countryDefinitionLabel.text = countryName;
            }
        }
    }


}
