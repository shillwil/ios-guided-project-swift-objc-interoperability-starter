//
//  LSIContactController.m
//  Contacts-Hybrid
//
//  Created by Alex Shillingford on 2/24/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "LSIContactController.h"
// Import Swift auto-generated header file, there is no code
// completion, and you just type it in the form:
// #import "Project_Name-Swift.h" // all - or " " (spaces) will be _ (underscores)
#import "Contacts_Hybrid-Swift.h"

// Class extension (private properties)

@interface LSIContactController ()

@property (nonatomic) NSMutableArray *internalContacts;

@end

@implementation LSIContactController

- (instancetype)init {
    self = [super init];
    if (self) {
        _internalContacts = [[NSMutableArray alloc] init];
        // TODO: Remove for production
        [self addTestContacts];
    }
    return self;
}

- (void)addTestContacts {
    // I need to import our Swift code into Objective-C
    Contact *myself = [[Contact alloc] initWithName:@"Alex Shillingford" relationship:@"Myself"];
    
    [self.internalContacts addObjectsFromArray:@[myself]];
}

// NSArray = immutable (let array = [3, 4, 5]) ie: constant
// NSMutableArray = mutable, modify it (var array = [3, 4, 5, 6])
- (NSArray *)contacts {
    return [_internalContacts copy];
}

@end
