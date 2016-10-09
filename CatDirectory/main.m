//
//  main.m
//  CatDirectory
//
//  Created by Sangeeta Vishwanath on 4/10/2016.
//  Copyright © 2016 Sangeeta Vishwanath. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "CatPresenter.h"
#import "PetPresentationModel.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        id<PetPresenter> petPresenter = [[CatPresenter alloc] init];

        [petPresenter retrievePetsByOwnersGenderWithSuccess:^(PetPresentationModel *presentationModel) {

            NSString *petList = [presentationModel petsClassifiedByOwnerGender];
            NSLog(@"%@", petList);

        } failure:^(NSError *error) {
            NSLog(@"%@", error.localizedFailureReason);
        }];

        [[NSRunLoop mainRunLoop] run];
        return 0;
    }

}
