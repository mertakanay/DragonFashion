//
//  DetailViewController.h
//  Dragon Fashion
//
//  Created by Mert Akanay on 17.03.2015.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Dragon.h"

@interface DetailViewController : UIViewController
@property Dragon *selectedDragon;

@property Dragon *fullName;
@property Dragon *gender;

@end
