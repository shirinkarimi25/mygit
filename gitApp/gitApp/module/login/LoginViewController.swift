//
//  LoginViewController.swift
//  gitApp
//
//  Created by Shirin Karimi on 4/18/21.
//  Copyright © 2021 Shirin Karimi. All rights reserved.
//

import UIKit
import CountryPickerView

class LoginViewController: UIViewController {
   
    

    @IBOutlet weak var viewEnter: UIView!
    @IBOutlet weak var imageEnter: UIImageView!
    @IBOutlet weak var labelLoginTitle: UILabel!
    @IBOutlet weak var labelGuide: UILabel!
    @IBOutlet weak var viewCountryPicker: UIView!
    @IBOutlet weak var imageFlag: UIImageView!
    @IBOutlet weak var labelCountryName: UILabel!
    @IBOutlet weak var viewPhoneNubber: UIView!
    @IBOutlet weak var textFieldPhone: UILabel!
    @IBOutlet weak var buttonSenteCode: UIButton!
    
    let countryPickerView = CountryPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initFonts()
        initUI()
        
        countryPickerView.delegate = self
        countryPickerView.dataSource = self
        
        let gesturCounntryView = UITapGestureRecognizer(target: self, action:#selector(countryPickerTapped(_:)))
        viewCountryPicker.addGestureRecognizer(gesturCounntryView)
        
    }
    
  
    
    func initUI() {

        viewEnter.makeCircle()
        viewPhoneNubber.cornerRadius()
        viewCountryPicker.cornerRadius()
        buttonSenteCode.cornerRadius()
        

        view.backgroundColor = UIColor(named: "darkWithe")
        viewEnter.backgroundColor = UIColor(named: "niceGray")
        buttonSenteCode.backgroundColor = UIColor(named: "colorButton")
        viewPhoneNubber.backgroundColor = UIColor.white
        viewCountryPicker.backgroundColor = UIColor.white
    }
    
    func initFonts() {
        
        labelLoginTitle.font = FontHeloer.bold(size: 16)
        labelGuide.font = FontHeloer.Light(size: 14)
        labelCountryName.font = FontHeloer.bold(size: 12)
        textFieldPhone.font = FontHeloer.Medium(size: 10)
        buttonSenteCode.titleLabel?.font = FontHeloer.bold(size: 14)
    }
    
    @IBAction func sendCodePressed(_ sender: Any) {
        
    }
    
    @objc func countryPickerTapped(_: UITapGestureRecognizer){
          countryPickerView.showCountriesList(from: self)
      }
    
    
}

extension LoginViewController:CountryPickerViewDelegate, CountryPickerViewDataSource {
    
    func countryPickerView(_ countryPickerView: CountryPickerView, didSelectCountry country: Country) {
        print(country)
        labelCountryName.text = country.name
        imageFlag.image = country.flag
        
    }
    
    
    
}


