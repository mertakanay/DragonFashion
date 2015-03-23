//
//  DetailViewController.m
//  Dragon Fashion
//
//  Created by Mert Akanay on 17.03.2015.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *genderLabel;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = self.selectedDragon.signatureClothingItem;
    self.genderLabel.text = self.selectedDragon.gender;
    self.nameLabel.text = self.selectedDragon.fullName;
}

@end
