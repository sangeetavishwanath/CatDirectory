//
//  PetTypeModel.m
//  CatDirectory
//
//  Created by Sangeeta Vishwanath on 7/10/2016.
//  Copyright © 2016 Sangeeta Vishwanath. All rights reserved.
//

#import "PetTypeModel.h"

@implementation PetTypeModel

+ (PetType)petTypeFromString:(NSString *)petTypeAsString
{
    PetType petType = PetTypeUnknown;

    if ([petTypeAsString caseInsensitiveCompare:@"cat"] == NSOrderedSame) {
        petType = PetTypeCat;
    } else if ([petTypeAsString caseInsensitiveCompare:@"dog"] == NSOrderedSame) {
        petType = PetTypeDog;
    }

    return petType;
}

@end
