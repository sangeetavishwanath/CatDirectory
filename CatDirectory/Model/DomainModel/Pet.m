//
//  Pet.m
//  CatDirectory
//
//  Created by Sangeeta Vishwanath on 6/10/2016.
//  Copyright © 2016 Sangeeta Vishwanath. All rights reserved.
//

#import "Pet.h"
#import "PetResponse.h"

@implementation Pet

- (instancetype)initWithPetResponse:(PetResponse *)petResponse
{
    self = [super init];

    if (self) {
        _name = petResponse.name;
        _petType = [PetTypeModel petTypeFromString:petResponse.petType];
    }

    return self;
}

@end
