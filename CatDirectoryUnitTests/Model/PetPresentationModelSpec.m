//
//  PetPresentationModelSpec.m
//  CatDirectory
//
//  Created by Sangeeta Vishwanath on 10/10/2016.
//  Copyright © 2016 Sangeeta Vishwanath. All rights reserved.
//

#import "TestFixtures.h"
#import "PetPresentationModel.h"
#import "Pet.h"

SpecBegin(PetPresentationModelTests)

describe(@"PetPresentationModel", ^{

    describe(@"initWithFemaleOwnersPets:maleOwnersPets:", ^{

        __block NSArray<Pet *> *maleOwnersPets;
        __block NSArray<Pet *> *femaleOwnersPets;

        beforeEach(^{
            Pet *pet1 = mock(Pet.class);
            [given([pet1 name]) willReturn:@"Pet1"];

            Pet *pet2 = mock(Pet.class);
            [given([pet2 name]) willReturn:@"Pet2"];

            Pet *pet3 = mock(Pet.class);
            [given([pet3 name]) willReturn:@"Pet3"];

            Pet *pet4 = mock(Pet.class);
            [given([pet4 name]) willReturn:@"Pet4"];

            maleOwnersPets = [NSArray arrayWithObjects:pet1, pet3, pet4, nil];
            femaleOwnersPets = [NSArray arrayWithObjects:pet2, nil];
        });

        it(@"will initialise the model correctly", ^{
            PetPresentationModel *model = [[PetPresentationModel alloc] initWithFemaleOwnersPets:femaleOwnersPets maleOwnersPets:maleOwnersPets];
            expect([model petsClassifiedByOwnerGender]).to.equal(@"\nMale\n\nPet1\nPet3\nPet4\n\nFemale\n\nPet2");
        });
    });
});

SpecEnd