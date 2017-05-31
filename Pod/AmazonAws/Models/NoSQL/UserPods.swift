//
//  UserPods.swift
//  MySampleApp
//
//
// Copyright 2017 Amazon.com, Inc. or its affiliates (Amazon). All Rights Reserved.
//
// Code generated by AWS Mobile Hub. Amazon gives unlimited permission to 
// copy, distribute and modify it.
//
// Source code generated from template: aws-my-sample-app-ios-swift v0.16
//

import Foundation
import UIKit
import AWSDynamoDB

class UserPods: AWSDynamoDBObjectModel, AWSDynamoDBModeling {
    
    var _userId: String?
    var _podId: NSNumber?
    var _geoHash: String?
    
    class func dynamoDBTableName() -> String {

        return "pod-mobilehub-1901037061-UserPods"
    }
    
    class func hashKeyAttribute() -> String {

        return "_userId"
    }
    
    class func rangeKeyAttribute() -> String {

        return "_podId"
    }
    
    override class func jsonKeyPathsByPropertyKey() -> [AnyHashable: Any] {
        return [
               "_userId" : "userId",
               "_podId" : "podId",
               "_geoHash" : "geoHash",
        ]
    }
}
