//
//  Pet.m
//  CatDirectory
//
//  Created by Sangeeta Vishwanath on 6/10/2016.
//  Copyright © 2016 Sangeeta Vishwanath. All rights reserved.
//

#import "Pet.h"

@implementation Pet

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    NSDictionary *propertyToJsonMappings = @{@"name": @"name",
                                             @"petType": @"type"};

    return propertyToJsonMappings;
}

+ (NSValueTransformer *)petTypeJSONTransformer {
    return [NSValueTransformer
            mtl_valueMappingTransformerWithDictionary:@{
                                                        kCatStringRepresentation: @(PetTypeCat),
                                                        kDogStringRepresentation: @(PetTypeDog),
                                                        kFishStringRepresentation: @(PetTypeFish)
                                                        }
            defaultValue:@(PetTypeUnknown)
            reverseDefaultValue:kUnknownPetStringRepresentation];
}

@end
