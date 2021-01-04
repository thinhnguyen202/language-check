//
//  APITranslate.swift
//  DemoTextField
//
//  Created by MBA0052 on 12/31/20.
//

import Foundation
//
//class CheckLanguage {
//    
//    let headers = [
//        "x-rapidapi-host": "google-translate1.p.rapidapi.com",
//        "x-rapidapi-key": "6b4ce84f51msha8e62e71ca44c69p102520jsnebcfbd6cfbe1Y",
//        "accept-encoding": "application/gzip",
//        "content-type": "application/x-www-form-urlencoded"
//    ]
//    
//    let postData = NSMutableData(data: "q=English is hard, but detectably so".data(using: String.Encoding.utf8)!)
//    
//    let request = NSMutableURLRequest(url: NSURL(string: "https://google-translate1.p.rapidapi.com/language/translate/v2/detect")! as URL, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 10.0)
//    
//    
//    request.httpMethod = "POST"
//    request.allHTTPHeaderFields = headers
//    request.httpBody = postData as Data
//    
//    let session = URLSession.shared
//    let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
//        if (error != nil) {
//            print(error)
//        } else {
//            let httpResponse = response as? HTTPURLResponse
//            print(httpResponse)
//        }
//    })
//    
//    dataTask.resume()
//    
//}
