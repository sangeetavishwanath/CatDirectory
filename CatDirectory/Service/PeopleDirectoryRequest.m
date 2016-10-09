//
//  PeopleDirectoryRequest.m
//  CatDirectory
//
//  Created by Sangeeta Vishwanath on 6/10/2016.
//  Copyright © 2016 Sangeeta Vishwanath. All rights reserved.
//

#import "PeopleDirectoryRequest.h"

static NSString *const kRequestPath = @"http://agl-developer-test.azurewebsites.net/people.json";

@implementation PeopleDirectoryRequest

- (instancetype)init
{
    self = [super init];

    if (self) {
        _url = [[NSURL alloc] initWithString:kRequestPath];
        _parameters = @{};
    }

    return self;
}

@end
