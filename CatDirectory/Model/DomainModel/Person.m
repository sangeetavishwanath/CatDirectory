//
//  Person.m
//  CatDirectory
//
//  Created by Sangeeta Vishwanath on 6/10/2016.
//  Copyright © 2016 Sangeeta Vishwanath. All rights reserved.
//

#import "Person.h"

#import "GenderTypeModel.h"
#import "Pet.h"

@implementation Person

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
    return [MTLJSONAdapter arrayTransformerWithModelClass:Pet.class];
}

+ (NSValueTransformer *)genderJSONTransformer {
    return [NSValueTransformer mtl_valueMappingTransformerWithDictionary:@{
                                                                           @"Male": @(GenderTypeMale),
                                                                           @"Female": @(GenderTypeFemale)
                                                                           }
                                                            defaultValue:@(GenderTypeUnknown)
                                                     reverseDefaultValue:@"Unknown"];
}

@end
