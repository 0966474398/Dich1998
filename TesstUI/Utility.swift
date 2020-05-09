//
//  tility.swift
//  TesstUI
//
//  Created by Nguyen Quoc Dich on 5/8/20.
//  Copyright © 2020 Nguyen.Quoc.Dich. All rights reserved.
//

import UIKit

class Utility: NSObject {
    static func inValid(str: String)-> Bool
    {
        let userName = "[A-Z0-9a-z]{4,30}"
        let testUserName = NSPredicate(format: "SELF MATCHES %@ ", userName)
        let passWord = "[A-Z0-9a-z\\.!]{8,30}"
        _ = NSPredicate(format: "SELF MATCHES %@ ", passWord)
        return testUserName.evaluate(with: str)
        
    }
}
