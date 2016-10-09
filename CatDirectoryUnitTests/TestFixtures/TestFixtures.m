//
//  TestFixtures.m
//  CatDirectory
//
//  Created by Sangeeta Vishwanath on 10/10/2016.
//  Copyright © 2016 Sangeeta Vishwanath. All rights reserved.
//

#import "TestFixtures.h"
#import "Person.h"
#import <Mantle/Mantle.h>

@implementation TestFixtures

+ (NSArray<Person *> *)people
{
    NSData *jsonData = [self jsonWithName:@"People"];
    NSArray *json = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingAllowFragments error:nil];

    NSError *mantleError;
    NSArray<Person *> *people = [MTLJSONAdapter modelsOfClass:Person.class fromJSONArray:json error:&mantleError];
    return (mantleError ? nil : people);
}

+ (NSData *)jsonWithName:(NSString *)jsonName
{
    NSString *path = [[NSBundle bundleForClass:self.class] pathForResource:jsonName ofType:@"json"];
    NSAssert(path, @"Json file not found with name %@", jsonName);

    NSData *jsonData = [NSData dataWithContentsOfFile:path];
    NSAssert(jsonData, @"Invalid json at path %@", path);

    return jsonData;
}

@end
