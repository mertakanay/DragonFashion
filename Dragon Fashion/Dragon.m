//
//  Dragon.m
//  Dragon Fashion
//
//  Created by Mert Akanay on 17.03.2015.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "Dragon.h"

@implementation Dragon

- (NSString *)description
{
    return [NSString stringWithFormat:@"Dragon with name %@ has the signature clothing item of %@", self.fullName, self.signatureClothingItem];
}

- (instancetype)initWithFullName:(NSString *)name andClothingItem:(NSString *)clothingItem andGender:(NSString *)gender

{
    self = [super init];
    self.fullName = name;
    self.signatureClothingItem = clothingItem;
    self.gender = gender;
    return self;
}

@end
