//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Sergey Gomolko
// On: 7/29/21
// 
// Copyright © 2021 RSSchool. All rights reserved.

#import "DrawTableViewCell.h"

@interface DrawTableViewCell()
@property (nonatomic, strong) UILabel *titleLabel;
//@property (nonatomic, strong) UISwitch *switchButton;
@property (nonatomic, strong) UIView *completedIndicatorView;
@end

@implementation DrawTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setupViews];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
  [self setupViews];
}

//- (void)configureWithShoppingItem:(ShoppingItem *)shoppingItem {
//    self.titleLabel.text = shoppingItem.title;
//    self.completedIndicatorView.hidden = !shoppingItem.completed;
//}

- (void)setupViews {
  self.switchButton = [UISwitch new];
  //self.switchButton setOn:<#(BOOL)#>
  self.switchButton.translatesAutoresizingMaskIntoConstraints = NO;
  [self addSubview:self.switchButton];
  
      [NSLayoutConstraint activateConstraints:@[
         // [self.switchButton.leadingAnchor constraintEqualToAnchor:self.leadingAnchor],
          [self.switchButton.topAnchor constraintEqualToAnchor:self.topAnchor constant:12.0],
          [self.switchButton.bottomAnchor constraintEqualToAnchor:self.bottomAnchor constant:8.0],
          [self.switchButton.trailingAnchor constraintEqualToAnchor:self.trailingAnchor constant:-15.0],
          
          
          [self.switchButton.widthAnchor constraintEqualToConstant:50.0]
      ]];
  
  
//    self.completedIndicatorView = [[UIView alloc] init];
//    self.completedIndicatorView.backgroundColor = [UIColor colorWithRed:50.0/255.0 green:215.0/255.0 blue:75.0/255.0 alpha:255.0/255.0];
//    self.completedIndicatorView.translatesAutoresizingMaskIntoConstraints = NO;
//    [self addSubview:self.completedIndicatorView];
//    [NSLayoutConstraint activateConstraints:@[
//        [self.completedIndicatorView.leadingAnchor constraintEqualToAnchor:self.leadingAnchor],
//        [self.completedIndicatorView.topAnchor constraintEqualToAnchor:self.topAnchor],
//        [self.completedIndicatorView.bottomAnchor constraintEqualToAnchor:self.bottomAnchor],
//        [self.completedIndicatorView.widthAnchor constraintEqualToConstant:50.0]
//    ]];

    self.titleLabel = [[UILabel alloc] init];
    self.titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:self.titleLabel];
    [NSLayoutConstraint activateConstraints:@[
        [self.titleLabel.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant:16.0],
//        [self.titleLabel.trailingAnchor constraintEqualToAnchor:self.trailingAnchor constant:-16.0],
        [self.trailingAnchor constraintEqualToAnchor:self.titleLabel.trailingAnchor constant:16.0],
        [self.titleLabel.centerYAnchor constraintEqualToAnchor:self.centerYAnchor]
    ]];
}


@end
