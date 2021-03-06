//
//  countryData.swift
//  astrahat
//
//  Created by on on 8/10/18.
//  Copyright © 2018 on. All rights reserved.
//

import Foundation
import ObjectMapper


class countryData : NSObject, NSCoding, Mappable{
    
    var code : String?
    var createdAt : AnyObject?
    var id : Int?
    var nameAr : String?
    var nameEn : String?
    var updatedAt : AnyObject?
    
    
    class func newInstance(map: Map) -> Mappable?{
        return countryData()
    }
    required init?(map: Map){}
    private override init(){}
    
    func mapping(map: Map)
    {
        code <- map["code"]
        createdAt <- map["created_at"]
        id <- map["id"]
        nameAr <- map["name_ar"]
        nameEn <- map["name_en"]
        updatedAt <- map["updated_at"]
        
    }
    
    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        code = aDecoder.decodeObject(forKey: "code") as? String
        createdAt = aDecoder.decodeObject(forKey: "created_at") as? AnyObject
        id = aDecoder.decodeObject(forKey: "id") as? Int
        nameAr = aDecoder.decodeObject(forKey: "name_ar") as? String
        nameEn = aDecoder.decodeObject(forKey: "name_en") as? String
        updatedAt = aDecoder.decodeObject(forKey: "updated_at") as? AnyObject
        
    }
    
    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if code != nil{
            aCoder.encode(code, forKey: "code")
        }
        if createdAt != nil{
            aCoder.encode(createdAt, forKey: "created_at")
        }
        if id != nil{
            aCoder.encode(id, forKey: "id")
        }
        if nameAr != nil{
            aCoder.encode(nameAr, forKey: "name_ar")
        }
        if nameEn != nil{
            aCoder.encode(nameEn, forKey: "name_en")
        }
        if updatedAt != nil{
            aCoder.encode(updatedAt, forKey: "updated_at")
        }
        
    }
    
}
