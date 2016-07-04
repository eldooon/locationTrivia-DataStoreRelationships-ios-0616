//
//  FISAddLocationViewController.m
//  locationTrivia-dataStore
//
//  Created by Eldon Chan on 7/1/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISAddLocationViewController.h"
#import "FISLocation.h"
#import "FISLocationsDataStore.h"

@interface FISAddLocationViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *latField;
@property (weak, nonatomic) IBOutlet UITextField *longField;
@property (weak, nonatomic) IBOutlet UIButton *cancelButton;
@property (weak, nonatomic) IBOutlet UIButton *savedButton;

@end

@implementation FISAddLocationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataStore = [FISLocationsDataStore sharedLocationsDataStore];
    
    self.nameField.accessibilityIdentifier = @"nameField";
    self.nameField.accessibilityLabel = @"nameField";
    self.latField.accessibilityIdentifier = @"latitudeField";
    self.latField.accessibilityLabel = @"latitudeField";
    self.longField.accessibilityIdentifier = @"longitudeField";
    self.longField.accessibilityLabel = @"longitudeField";
    self.savedButton.accessibilityIdentifier = @"saveButton";
    self.savedButton.accessibilityLabel = @"saveButton";
    self.cancelButton.accessibilityIdentifier = @"cancelButton";
    self.cancelButton.accessibilityLabel = @"cancelButton";
    
    // Do any additional setup after loading the view.
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)cancelButtonTapped:(id)sender {

    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)saveButtonTapped:(id)sender {
    
    FISLocation *newLocation = [[FISLocation alloc]initWithName:self.nameField.text latitude:self.latField.text.floatValue longitude:self.longField.text.floatValue];
    
    [self.dataStore.locations addObject:newLocation];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    NSLog(@"%@", self.navigationController.viewControllers);
    
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
