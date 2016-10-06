//
//  PersonResponse.m
//  CatDirectory
//
//  Created by Sangeeta Vishwanath on 6/10/2016.
//  Copyright © 2016 Sangeeta Vishwanath. All rights reserved.
//

#import "PersonResponse.h"
#import "PetResponse.h"

@implementation PersonResponse

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    NSDictionary *propertyToJsonMappings = @{@"name": @"name",
                                             @"gender": @"gender",
                                             @"age": @"age",
                                             @"pets": @"pets"};

    return propertyToJsonMappings;
}

+ (NSValueTransformer *)petsJSONTransformer
{
    return [MTLJSONAdapter arrayTransformerWithModelClass:PetResponse.class];
}

@end
