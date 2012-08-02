//
//  BirdsMasterViewController.h
//  BirdWatching
//
//  Created by 袁勇 on 12-8-1.
//  Copyright (c) 2012年 袁勇. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BirdSightingDataController;

@interface BirdsMasterViewController : UITableViewController

@property (strong ,nonatomic) BirdSightingDataController *dataController;

@end
