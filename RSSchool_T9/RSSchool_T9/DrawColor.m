//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Sergey Gomolko
// On: 7/29/21
// 
// Copyright © 2021 RSSchool. All rights reserved.

#import "DrawColor.h"

@implementation DrawColor

- (instancetype)initWithHex:(UInt32)hex {
    self = [super init];
    if (self) {
      _color = [UIColor colorWithHex:hex];
      NSMutableString *str = [[NSMutableString alloc] initWithFormat:@"%x", (unsigned int)hex];
      [str substringFromIndex:1];
      str = [NSMutableString stringWithFormat:@"#%@", str];

//      NSAttributedString *labelText = [[NSAttributedString alloc] initWithString : str
//                            attributes : @{
//                              NSForegroundColorAttributeName : self.color }];
      _title = [str copy];
      _isChoose = false;
        [self setupViews];
    }
    return self;
}
- (void)setupViews {
  
}
- (void)toggle{
  self.isChoose = !self.isChoose;
}
@end
