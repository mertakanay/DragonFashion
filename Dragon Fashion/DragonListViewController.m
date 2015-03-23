//
//  ViewController.m
//  Dragon Fashion
//
//  Created by Mert Akanay on 17.03.2015.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "DragonListViewController.h"
#import "Dragon.h"
#import "DetailViewController.h"

@interface DragonListViewController () <UITableViewDelegate, UITableViewDataSource>

@property NSMutableArray *dragons;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation DragonListViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //self.dragons = [NSMutableArray arrayWithObjects:@"Smaug", nil];

    Dragon *dragon = [[Dragon alloc]initWithFullName:@"Smaug" andClothingItem:@"Golden Necklace"andGender:@"male"];
    Dragon *dragon1 = [[Dragon alloc]initWithFullName:@"Dragonite" andClothingItem:@"Fedora"andGender:@"female"];
    Dragon *dragon2 = [[Dragon alloc]initWithFullName:@"Spyro" andClothingItem:@"Beats"andGender:@"male"];

//    Dragon *dragon = [[Dragon alloc]init];
//    dragon.fullName = @"Smaug";
//    dragon.signatureClothingItem = @"Golden Necklace";
//    Dragon *dragon1 = [[Dragon alloc]init];
//    dragon1.fullName = @"Dragonite";
//    dragon1.signatureClothingItem = @"Fedora";
//    Dragon *dragon2 = [[Dragon alloc]init];
//    dragon2.fullName = @"Spyro";
//    dragon2.signatureClothingItem = @"Beats";
    self.dragons = [NSMutableArray arrayWithObjects:dragon,dragon1,dragon2,nil];

    for (Dragon *aDragon in self.dragons)
    {
        NSLog(@"%@", aDragon.description);
    }

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dragons.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellID"];
    Dragon *dragonAtRow = [self.dragons objectAtIndex:indexPath.row];
    cell.textLabel.text = dragonAtRow.fullName;
    cell.detailTextLabel.text = dragonAtRow.signatureClothingItem;
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    DetailViewController *detailVC = segue.destinationViewController;
    NSIndexPath *selectedIndexPath = [self.tableView indexPathForSelectedRow];
    Dragon *theSelectedDragon = [self.dragons objectAtIndex:selectedIndexPath.row];
    detailVC.selectedDragon = theSelectedDragon;
}


@end
