//
//  PersonResponse.h
//  CatDirectory
//
//  Created by Sangeeta Vishwanath on 6/10/2016.
//  Copyright © 2016 Sangeeta Vishwanath. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PetResponse;

@interface PersonResponse : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *gender;
@property (nonatomic) NSUInteger age;
@property (nonatomic, strong) NSArray<PetResponse *> *pets;

@end
