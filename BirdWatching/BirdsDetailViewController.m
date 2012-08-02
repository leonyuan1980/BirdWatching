//
//  BirdsDetailViewController.m
//  BirdWatching
//
//  Created by 袁勇 on 12-8-1.
//  Copyright (c) 2012年 袁勇. All rights reserved.
//

#import "BirdsDetailViewController.h"
#import "BirdSighting.h"

@interface BirdsDetailViewController ()
- (void)configureView;
@end

@implementation BirdsDetailViewController

@synthesize sighting = _sighting, birdNameLabel = _birdNameLabel, locationLabel = _locationLabel ,dateLabel = _dateLabel;

#pragma mark - Managing the detail item

- (void)setSighting:(BirdSighting *)newsighting
{
    if(_sighting != newsighting) {
        _sighting = newsighting;
        
        // Update the view.
        [self configureView];
    }
}

/*
- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}
 */

- (void)configureView
{
    // Update the user interface for the detail item.
    /*

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
     */
    
    BirdSighting *thesighting = self.sighting;
    
    static NSDateFormatter *formatter = nil;
    if (formatter == nil) {
        formatter= [[NSDateFormatter alloc] init];
        [formatter setDateStyle:NSDateFormatterMediumStyle];
    }
    if(thesighting) {
        self.birdNameLabel.text = thesighting.name;
        self.locationLabel.text = thesighting.location;
        self.dateLabel.text = [formatter stringFromDate:(NSDate *)thesighting.date];
    }
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    self.sighting = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
