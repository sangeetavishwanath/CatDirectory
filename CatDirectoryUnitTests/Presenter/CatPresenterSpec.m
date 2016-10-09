//
//  CatPresenterSpec.m
//  CatDirectory
//
//  Created by Sangeeta Vishwanath on 10/10/2016.
//  Copyright © 2016 Sangeeta Vishwanath. All rights reserved.
//

#import "TestFixtures.h"

#import "CatPresenter.h"
#import "PeopleDirectoryService.h"
#import "Pet.h"
#import "PetPresentationModel.h"

@interface PetPresentationModel ()

@property (nonatomic, strong) NSArray<Pet *> *femaleOwnersPets;
@property (nonatomic, strong) NSArray<Pet *> *maleOwnersPets;

@end

SpecBegin(CatPresenterSpec)

describe(@"CatPresenter", ^{
    __block CatPresenter *presenter;
    __block PeopleDirectoryService *service;

    beforeEach(^{
        service = mock(PeopleDirectoryService.class);
        presenter = [[CatPresenter alloc] initWithPeopleDirectoryService:service];
    });

    describe(@"retrievePetsByOwnersGenderWithSuccess:failure:", ^{

        it(@"will ask the PeopleDirectoryService to retrieve the people directory", ^{

            [presenter retrievePetsByOwnersGenderWithSuccess:nil failure:nil];
            [verifyCount(service, times(1)) retrievePeopleDirectoryWithSuccess:HC_anything() failure:HC_anything()];
        });

        context(@"retrievePeopleDirectory succeeded", ^{
            __block NSArray<Person *> *people;

            beforeEach(^{
                [givenVoid([service retrievePeopleDirectoryWithSuccess:HC_anything() failure:HC_anything()]) willDo:^id(NSInvocation *invocation) {
                    people = [TestFixtures people];
                    PeopleDirectoryRetrievalSuccessHandler successBlock = invocation.mkt_arguments[0];
                    successBlock(people);
                    return nil;
                }];
            });

            it(@"will call the success block", ^{
                [presenter retrievePetsByOwnersGenderWithSuccess:^(PetPresentationModel *model) {
                    expect(model.femaleOwnersPets.count).to.equal(3);
                    expect(model.femaleOwnersPets[0].name).to.equal(@"Garfield");
                    expect(model.femaleOwnersPets[0].petType).to.equal(PetTypeCat);
                    expect(model.femaleOwnersPets[1].name).to.equal(@"Tabby");
                    expect(model.femaleOwnersPets[1].petType).to.equal(PetTypeCat);
                    expect(model.femaleOwnersPets[2].name).to.equal(@"Simba");
                    expect(model.femaleOwnersPets[2].petType).to.equal(PetTypeCat);

                    expect(model.maleOwnersPets.count).to.equal(4);
                    expect(model.maleOwnersPets[0].name).to.equal(@"Garfield");
                    expect(model.maleOwnersPets[0].petType).to.equal(PetTypeCat);
                    expect(model.maleOwnersPets[1].name).to.equal(@"Tom");
                    expect(model.maleOwnersPets[1].petType).to.equal(PetTypeCat);
                    expect(model.maleOwnersPets[2].name).to.equal(@"Max");
                    expect(model.maleOwnersPets[2].petType).to.equal(PetTypeCat);
                    expect(model.maleOwnersPets[3].name).to.equal(@"Jim");
                    expect(model.maleOwnersPets[3].petType).to.equal(PetTypeCat);

                } failure:^(NSError *errorArgument) {
                }];

                [verifyCount(service, times(1)) retrievePeopleDirectoryWithSuccess:HC_anything() failure:HC_anything()];
            });
        });

        context(@"retrievePeopleDirectory failed", ^{

            __block NSError *error;

            beforeEach(^{
                [givenVoid([service retrievePeopleDirectoryWithSuccess:HC_anything() failure:HC_anything()]) willDo:^id(NSInvocation *invocation) {
                    error = [NSError new];
                    PeopleDirectoryRetrievalFailureHandler failureBlock = invocation.mkt_arguments[1];
                    failureBlock(error);
                    return nil;
                }];
            });

            it(@"will call the failure block", ^{
                [presenter retrievePetsByOwnersGenderWithSuccess:^(PetPresentationModel *model) {
                } failure:^(NSError *errorArgument) {
                    expect(errorArgument).to.equal(error);
                }];
                
                [verifyCount(service, times(1)) retrievePeopleDirectoryWithSuccess:HC_anything() failure:HC_anything()];
            });
        });
    });
});

SpecEnd