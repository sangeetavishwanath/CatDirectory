//
//  Person.m
//  CatDirectory
//
//  Created by Sangeeta Vishwanath on 6/10/2016.
//  Copyright © 2016 Sangeeta Vishwanath. All rights reserved.
//

#import "Person.h"
#import "PersonResponse.h"

@implementation Person

- (instancetype)initWithPersonResponse:(PersonResponse *)personResponse
{
    self = [super init];

    if (self) {
        _name = personResponse.name;
        _age = personResponse.age;
    }

    return self;
}

@end
