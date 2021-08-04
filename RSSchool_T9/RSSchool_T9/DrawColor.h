//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Sergey Gomolko
// On: 7/29/21
// 
// Copyright © 2021 RSSchool. All rights reserved.
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "UIColor+HexToColor.h"

NS_ASSUME_NONNULL_BEGIN

@interface DrawColor : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) UIColor *color;
@property (nonatomic, assign) BOOL isChoose;

- (instancetype)initWithHex:(UInt32)hex;
- (void)toggle;
@end

NS_ASSUME_NONNULL_END
