//
//  PostService.swift
//  EaseApp
//
//  Created by AGW on 11/15/15.
//  Copyright (c) 2015 Ease. All rights reserved.
//

import Foundation

public class PostService{
    
    public static func sendJSON(jsonInput:String, token:String, url:String, path:String, method:String, callback:(AnyObject) -> ()){

        var nsURL = NSURL(string:url+path)!
        var request = NSMutableURLRequest(URL: nsURL)
        request.HTTPMethod = method
        request.addValue(token, forHTTPHeaderField: "Authorization")
        request.HTTPBody = (jsonInput as NSString).dataUsingEncoding(NSUTF8StringEncoding)
        
        let task = NSURLSession.sharedSession().dataTaskWithRequest(request){
            (data, response, error) in
            var error:NSError?
            var response: AnyObject = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: &error)!
            callback(response)
        }
        task.resume()
    }
}