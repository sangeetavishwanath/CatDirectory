//
//  TestFixtures.h
//  CatDirectory
//
//  Created by Sangeeta Vishwanath on 10/10/2016.
//  Copyright © 2016 Sangeeta Vishwanath. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <Specta/Specta.h>
#import <Expecta/Expecta.h>
#import <OCHamcrest/OCHamcrest.h>
#define MOCKITO_SHORTHAND
#import <OCMockito/OCMockito.h>

@class Person;

@interface TestFixtures : NSObject

+ (NSArray<Person *> *)people;

@end
