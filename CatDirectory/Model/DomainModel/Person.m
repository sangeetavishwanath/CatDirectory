//
//  Person.m
//  CatDirectory
//
//  Created by Sangeeta Vishwanath on 6/10/2016.
//  Copyright © 2016 Sangeeta Vishwanath. All rights reserved.
//

#import "Person.h"
#import "PersonResponse.h"
#import "Pet.h"
#import "PetResponse.h"

@implementation Person

- (instancetype)initWithPersonResponse:(PersonResponse *)personResponse
{
    self = [super init];

    if (self) {
        _name = personResponse.name;
        _age = personResponse.age;
        _gender = [GenderTypeModel genderTypeFromString:personResponse.gender];
        _pets = [self petsFromPetResponses:personResponse.pets];
    }

    return self;
}

#pragma mark - Helpers
- (NSArray<Pet *> *)petsFromPetResponses:(NSArray<PetResponse *> *)petResponses
{
    NSMutableArray<Pet *> *pets = [NSMutableArray array];

    for (PetResponse *petResponse in petResponses) {
        Pet *pet = [[Pet alloc] initWithPetResponse:petResponse];
        [pets addObject:pet];
    }

    return [pets copy];
}

@end
