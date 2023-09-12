//
//  UserDetailData.swift
//  NetClan
//
//  Created by Harapriya on 11/09/23.
//

import Foundation


struct UserDetails {
    var userImageData: String
    var userNameData: String
    var userLocationData: String
    var userDesignationData: String
    var userDistanceData: String
    
    init(userImageData: String = "", userNameData: String = "", userLocationData: String = "", userDesignationData: String = "", userDistanceData: String = "") {
        self.userImageData = userImageData
        self.userNameData = userNameData
        self.userLocationData = userLocationData
        self.userDesignationData = userDesignationData
        self.userDistanceData = userDistanceData
    }
}

struct UserObj {
    
    static var sharedDetails: [UserDetails] = {
        return [UserObj.harapriya, UserObj.Suvendu, UserObj.Ramesh, UserObj.Rajesh]
    }()
    
    static let harapriya = UserDetails(userImageData: "MyPic", userNameData: "Harapriya", userLocationData: "Bangalore", userDesignationData: "iOS Developer", userDistanceData: "Within 100 m")
    static let Suvendu = UserDetails(userImageData: "Kalia", userNameData: "Suvendu Kumar", userLocationData: "Bangalore", userDesignationData: "iOS Developer", userDistanceData: "Within 100 m")
    static let Ramesh = UserDetails(userImageData: "SnanaYatra", userNameData: "ramesh Ragul", userLocationData: "Odisha", userDesignationData: "UI/UX Designer", userDistanceData: "Within 600-700 m")
    static let Rajesh = UserDetails(userImageData: "logo", userNameData: "Rajesh Mishra", userLocationData: "Chennai", userDesignationData: "Backend Developer", userDistanceData: "Within 1.5 KM"
    )
}
