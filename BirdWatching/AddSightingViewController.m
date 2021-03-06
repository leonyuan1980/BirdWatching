//
//  AddSightingViewController.m
//  BirdWatching
//
//  Created by 袁勇 on 12-8-2.
//  Copyright (c) 2012年 袁勇. All rights reserved.
//

#import "AddSightingViewController.h"

@interface AddSightingViewController ()

@end

@implementation AddSightingViewController
@synthesize birdNameInput = _birdNameInput;
@synthesize locationInput = _locationInput;

@synthesize delegate = _delegate;

/*

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}
 
 */

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if((textField == self.birdNameInput) || (textField == self.locationInput)) {
        [textField resignFirstResponder];
    }
    return YES;
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    int length1 = textField.text.length - range.length + string.length;
    int length2 = 0;
    if(textField == self.birdNameInput) {
        length2 = self.locationInput.text.length;
    }
    else if(textField == self.locationInput) {
        length2 = self.birdNameInput.text.length;
    }
    
  //  int length = textField.text.length;
    if((length1 >0)&&(length2 >0)){
        self.navigationItem.rightBarButtonItem.enabled = YES;
    } else {
        self.navigationItem.rightBarButtonItem.enabled = NO;
    }
    return YES;
}

- (BOOL)textFieldShouldClear:(UITextField *)textField {
    /*
    int length = 0;
    if(textField == self.birdNameInput) {
        length = self.locationInput.text.length;
    }
    else if(textField == self.locationInput) {
        length = self.birdNameInput.text.length;
    }
    if(length == 0) {
        self.navigationItem.rightBarButtonItem.enabled = NO;
    }
    */
    self.navigationItem.rightBarButtonItem.enabled = NO;
    return YES;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.navigationItem.rightBarButtonItem.enabled = NO;
}

- (void)viewDidUnload
{
    [self setBirdNameInput:nil];
    [self setLocationInput:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    //return (interfaceOrientation == UIInterfaceOrientationPortrait);
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - Table view data source

/*
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    
    return cell;
}
 */

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate
/*

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
 */
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
/*
}
 */

- (IBAction)cancel:(id)sender {
    [[self delegate]addSightingViewControllerDidCancel:self];
}


- (IBAction)done:(id)sender {
    [[self delegate]addSightingViewControllerDidfinish:self name:self.birdNameInput.text location:self.locationInput.text];
}
@end
