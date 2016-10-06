//
//  PetResponse.m
//  CatDirectory
//
//  Created by Sangeeta Vishwanath on 6/10/2016.
//  Copyright © 2016 Sangeeta Vishwanath. All rights reserved.
//

#import "PetResponse.h"

@implementation PetResponse

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    NSDictionary *propertyToJsonMappings = @{@"name": @"name",
                                             @"petType": @"type"};

    return propertyToJsonMappings;
}

@end
