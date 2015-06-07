//
//  PinDetailController.m
//  MaPreference
//
//  Created by Abegael Jackson on 2015-06-02.
//  Copyright (c) 2015 Abegael Jackson. All rights reserved.
//

#import "PinDetailController.h"
#import "LocationInfoCell.h"
#import "LocationReviewCell.h"
#import "PinPFObject.h"
#import "DataViewController.h"
#import "PinAnnotation.h"

@interface PinDetailController ()<UITableViewDelegate, UITableViewDataSource>

@end

@implementation PinDetailController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    NSLog(@"Business name from viewDidLoad: %@", self.businessName);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    //will equal 1(header row) plus count of reviews
    return 2;
}

- (IBAction)unwindToPinDetail:(UIStoryboardSegue*)sender{
    
    // Pull any data from the view controller which initiated the unwind segue.
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([[segue identifier] isEqualToString:@"showAddReview"]) {
        //pass forward pin object
    }
    
}


//-(CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath{
//
//}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //    self.annotation = [[PinAnnotation alloc]init];
    LocationInfoCell *locationCell = [tableView dequeueReusableCellWithIdentifier:@"locationInfoCell" forIndexPath:indexPath];
    //    locationCell.locationNameLabel.text = self.annotation.businessName;
    LocationReviewCell *reviewCell = [tableView dequeueReusableCellWithIdentifier:@"locationReviewCell" forIndexPath:indexPath];
    
    if (indexPath.row == 1) {
        
        return locationCell;
    }
    else {
        return reviewCell;
    }
    
    return nil;
}


@end
