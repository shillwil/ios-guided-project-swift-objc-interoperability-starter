//
//  Contact.swift
//  Contacts-Hybrid
//
//  Created by Alex Shillingford on 2/24/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

import Foundation

// Swift structs do not work in Objective-C, so we need to use a class

class Contact {
    
    var name: String
    var relationship: String?
    
    init(name: String, relationship: String?) {
        self.name = name
        self.relationship = relationship
    }
}
