//
//  CatPresenter.m
//  CatDirectory
//
//  Created by Sangeeta Vishwanath on 8/10/2016.
//  Copyright © 2016 Sangeeta Vishwanath. All rights reserved.
//

#import "CatPresenter.h"

#import "PeopleDirectoryService.h"
#import "Person.h"
#import "PetPresentationModel.h"
#import "PetTypeModel.h"

@interface CatPresenter ()

@property (nonatomic, strong) PeopleDirectoryService *peopleDirectoryService;

@end

@implementation CatPresenter

- (instancetype)initWithPeopleDirectoryService:(PeopleDirectoryService *)peopleDirectoryService
{
    self = [super init];

    if (self) {
        _peopleDirectoryService = peopleDirectoryService;
    }

    return self;
}

- (instancetype)init
{
    PeopleDirectoryService *peopleDirectoryService = [[PeopleDirectoryService alloc] init];
    return [self initWithPeopleDirectoryService:peopleDirectoryService];
}

#pragma mark - PetPresenter methods

- (void)retrievePetsByOwnersGenderWithSuccess:(PetRetrievalSuccessHandler)success
                                      failure:(PetRetrievalFailureHandler)failure
{
    [self.peopleDirectoryService retrievePeopleDirectoryWithSuccess:^(NSArray<Person *> *people) {

        success([self petPresentationModelForPeople:people]);

    } failure:^(NSError *error) {
        failure(error);
    }];
}

#pragma mark - Helpers

- (PetPresentationModel *)petPresentationModelForPeople:(NSArray<Person *> *)people
{
    NSArray<Person *> *maleOwners = [self filterPeople:people withGender:GenderTypeMale];
    NSArray<Pet *> *maleOwnersCats = [self catsBelongingToPeople:maleOwners];

    NSArray<Person *> *femaleOwners = [self filterPeople:people withGender:GenderTypeFemale];
    NSArray<Pet *> *femaleOwnersCats = [self catsBelongingToPeople:femaleOwners];

    PetPresentationModel *presentationModel = [[PetPresentationModel alloc] initWithFemaleOwnersPets:femaleOwnersCats
                                                                                      maleOwnersPets:maleOwnersCats];
    return presentationModel;
}

- (NSArray<Person *> *)filterPeople:(NSArray<Person *> *)people withGender:(GenderType)gender
{
    NSPredicate *peopleMatchingGenderPredicate = [NSPredicate predicateWithFormat:@"gender == %d", gender];
    NSArray<Person *> *peopleMatchingGender = [people filteredArrayUsingPredicate:peopleMatchingGenderPredicate];
    return peopleMatchingGender;
}

- (NSArray<Pet *> *)catsBelongingToPeople:(NSArray<Person *> *)people
{
    NSMutableArray<Pet *> *cats = [NSMutableArray array];

    for (Person *person in people) {
        NSPredicate *catsPredicate = [NSPredicate predicateWithFormat:@"petType == %d", PetTypeCat];
        NSArray<Pet *> *catsOwnedByPerson = [person.pets filteredArrayUsingPredicate:catsPredicate];
        [cats addObjectsFromArray:catsOwnedByPerson];
    }
    
    return cats;
}

@end
