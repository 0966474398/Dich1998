//
//  ViewController.swift
//  TesstUI
//
//  Created by Nguyen Quoc Dich on 5/4/20.
//  Copyright © 2020 Nguyen.Quoc.Dich. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate{
    @IBOutlet weak var textUserName: UITextField!
    @IBOutlet weak var textPassword: UITextField!
    @IBOutlet weak var textLable: UILabel!
    
    
    
    @IBOutlet weak var btnLogin: UIButton!
    override func viewDidLoad() {
        let imageText = UIImage(named: "123")
        addImage(textfield: textUserName, img: imageText!)
        let passwordImage = UIImage(named: "3")
        addImage(textfield: textPassword, img: passwordImage!)
        super.viewDidLoad()
        
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.colors = [UIColor.cyan.cgColor, UIColor.purple.cgColor]
        gradient.locations = [0.0 , 1.0]
        gradient.startPoint = CGPoint(x: 0.0, y: 1.0)
        gradient.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradient.frame = CGRect(x: 0.0, y: 0.0, width: btnLogin.frame.size.width, height:btnLogin.frame.size.height);
        btnLogin.layer.insertSublayer(gradient, at: 0)
        btnLogin.layer.cornerRadius = 20
        btnLogin.layer.masksToBounds = true
        
        //        btnLogin.backgroundColor(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]),
        //        startPoint: .leading,
        //        endPoint: .trailing))
        
        
        
        
        // Do any additional setup after loading the view.
    }
    func addImage(textfield: UITextField,img: UIImage){
        let uiView = UIView()
        let imageViewText = UIImageView()
        imageViewText.frame = CGRect(x: 7.5, y: 7.5, width: 15, height: 15)
        
        imageViewText.image = img
        uiView.addSubview(imageViewText)
        
        textfield.leftView = uiView
        uiView.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        //uiView.backgroundColor = UIColor.red
        textfield.leftViewMode = .always
    }
    
    @IBAction func btnAction(_ sender: Any) {
        let userName: String = (self.textUserName.text?.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines))!
        let passWord: String = (self.textPassword.text?.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines))!
        if (passWord != "" && userName != "") {
            if Utility.inValid(str: userName) && Utility.inValid(str: passWord) {
                print("Login Successful")
                textLable.text = "Login Successful"
            } else if !Utility.inValid(str: userName) {
                print("Wrong userName")
                textLable.text = "Wrong userName"
            } else {
                print("password is invalid")
                textLable.text = "password is invalid"
            }
        } else {
            print("Error")
            textLable.text = "Error"
        }
        
    }
//    func validatePassword(strPWR: String?) -> String?
//    {
//        let length: Int = strPWR?.count ?? 0
//        if length >= 8 && length <=  = 30
//        {
//            print("password is valid")
//        } else {
//            print("password is invalid")
////            let msg = " password must be 8 character"
////            print(msg)
//        }
//        return ""
//    }
}

