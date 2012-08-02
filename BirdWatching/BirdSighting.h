//
//  BirdSighting.h
//  BirdWatching
//
//  Created by 袁勇 on 12-8-1.
//  Copyright (c) 2012年 袁勇. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BirdSighting : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *location;
@property (nonatomic, strong) NSDate *date;

- (id)initWithName:(NSString *)name location:(NSString *)location date:(NSDate *)date;

@end