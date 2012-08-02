//
//  AddSightingViewController.h
//  BirdWatching
//
//  Created by 袁勇 on 12-8-2.
//  Copyright (c) 2012年 袁勇. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AddSightingViewControllerDelegate;

@interface AddSightingViewController : UITableViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *birdNameInput;
@property (weak, nonatomic) IBOutlet UITextField *locationInput;
- (IBAction)cancel:(id)sender;
- (IBAction)done:(id)sender;

@property (weak, nonatomic) id <AddSightingViewControllerDelegate> delegate;

@end


@protocol AddSightingViewControllerDelegate <NSObject>
- (void)addSightingViewControllerDidCancel:(AddSightingViewController *)controller;
- (void)addSightingViewControllerDidfinish:(AddSightingViewController *)controller name:(NSString *)name location:(NSString *)location;

@end
