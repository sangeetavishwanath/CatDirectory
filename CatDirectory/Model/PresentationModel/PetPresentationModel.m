//
//  PetPresentationModel.m
//  CatDirectory
//
//  Created by Sangeeta Vishwanath on 8/10/2016.
//  Copyright © 2016 Sangeeta Vishwanath. All rights reserved.
//

#import "PetPresentationModel.h"

#import "Pet.h"

@interface PetPresentationModel ()

@property (nonatomic, strong) NSArray<Pet *> *femaleOwnersPets;
@property (nonatomic, strong) NSArray<Pet *> *maleOwnersPets;

@end

static NSString *const kMaleTitle = @"\nMale\n";
static NSString *const kFemaleTitle = @"\nFemale\n";

@implementation PetPresentationModel

- (instancetype)initWithFemaleOwnersPets:(NSArray<Pet *> *)femaleOwnersPets
                          maleOwnersPets:(NSArray<Pet *> *)maleOwnersPets
{
    self = [super init];

    if (self) {
        _femaleOwnersPets = femaleOwnersPets;
        _maleOwnersPets = maleOwnersPets;
    }

    return self;
}

- (NSString *)petsClassifiedByOwnerGender
{
    NSMutableArray<NSString *> *petStringComponents = [NSMutableArray array];

    [petStringComponents addObject:kMaleTitle];
    [petStringComponents addObjectsFromArray:[self catNamesForCats:self.maleOwnersPets]];

    [petStringComponents addObject:kFemaleTitle];
    [petStringComponents addObjectsFromArray:[self catNamesForCats:self.femaleOwnersPets]];

    return [petStringComponents componentsJoinedByString:@"\n"];
}

#pragma mark - Helpers
- (NSArray<NSString *> *)catNamesForCats:(NSArray<Pet *> *)cats
{
    NSMutableArray<NSString *> *catNames = [NSMutableArray array];

    for (Pet *pet in cats) {
        [catNames addObject:pet.name];
    }

    return [catNames copy];
}

@end
