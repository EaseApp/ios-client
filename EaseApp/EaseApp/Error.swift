//
//  Error.swift
//  EaseApp
//
//  Created by AGW on 11/15/15.
//  Copyright (c) 2015 Ease. All rights reserved.
//

import UIKit

public class Error{
    var statusCode:Int
    var friendlyError:String
    
    public init(statusCode:Int, friendlyError:String){
        self.statusCode = statusCode
        self.friendlyError = friendlyError
    }
}