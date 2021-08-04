//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Sergey Gomolko
// On: 7/29/21
// 
// Copyright © 2021 RSSchool. All rights reserved.

#import "UIColor+HexToColor.h"

@implementation UIColor (HexToColor)

+(UIColor *)colorWithHex:(UInt32)hex {
  int r = (hex >> 16) & 0xFF;
  int g = (hex >> 8) & 0xFF;
  int b = (hex) & 0xFF;
  
  return [UIColor colorWithRed:r / 255.0f
                         green:g / 255.0f
                          blue:b / 255.0f
                         alpha: 1.0];
}

@end
