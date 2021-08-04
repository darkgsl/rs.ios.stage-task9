//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Sergey Gomolko
// On: 7/28/21
// 
// Copyright © 2021 RSSchool. All rights reserved.

#import <UIKit/UIKit.h>
#import "DrawColor.h"
#import "ColorsViewController.h"
NS_ASSUME_NONNULL_BEGIN
extern DrawColor *globalColor;
extern NSArray<DrawColor *> *globalColors;

@interface SecondViewController :   UIViewController  <UITableViewDelegate, UITableViewDataSource>
//UITableViewController //

@end

NS_ASSUME_NONNULL_END
