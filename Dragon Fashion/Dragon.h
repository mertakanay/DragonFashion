//
//  Dragon.h
//  Dragon Fashion
//
//  Created by Mert Akanay on 17.03.2015.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dragon : NSObject

@property (nonatomic) NSString *fullName;
@property (nonatomic) NSString *signatureClothingItem;
@property (nonatomic) NSString *gender;

///Convenient initializer sets fullName and clothingItem parameters.
-(instancetype) initWithFullName:(NSString *)name andClothingItem:(NSString *)clothingItem andGender:(NSString *)gender;

@end
