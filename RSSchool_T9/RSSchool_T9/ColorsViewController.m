//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Sergey Gomolko
// On: 7/29/21
// 
// Copyright © 2021 RSSchool. All rights reserved.

#import "ColorsViewController.h"
NSString *cellReuseIdentifier2 = @"UITableViewCell";

@interface ColorsViewController ()

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation ColorsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  [self setupViews];
  [self setupTableView];
}



- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
  
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellReuseIdentifier2 forIndexPath:indexPath];

  DrawColor *color = globalColors[indexPath.row];
  
  UIFont * labelFont = [UIFont systemFontOfSize:17.0 weight:UIFontWeightRegular];
  NSAttributedString *textWithColor = [[NSAttributedString alloc] initWithString : color.title
                        attributes : @{
                          NSForegroundColorAttributeName : color.color,
                          NSFontAttributeName : labelFont
                        }];
  [cell.textLabel setAttributedText:textWithColor];
  
  
  if (color.isChoose) {
    cell.accessoryType = UITableViewCellAccessoryCheckmark;
  } else {
    cell.accessoryType = UITableViewCellAccessoryNone;
  }
  
  return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  
  return globalColors.count;
  
}

//MARK:-  setup tableView
- (void)setupTableView {
  
  
  self.tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleInsetGrouped];
  //self.tableView = [[UITableView alloc] init];
  self.tableView.translatesAutoresizingMaskIntoConstraints = NO;
  self.tableView.insetsContentViewsToSafeArea = true;
  self.tableView.delegate = self;
  self.tableView.dataSource = self;
  [self.tableView registerClass:UITableViewCell.class forCellReuseIdentifier:cellReuseIdentifier2];
  
 
  [self.view addSubview:self.tableView];
  //CGRect rect = CGRectMake(0, 0, 343, 104);
  //[self.tableView setFrame:rect];
/*
  [NSLayoutConstraint activateConstraints:@[
    [self.tableView.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:120],
    [self.tableView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-100],
    [self.tableView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:36],
    [self.tableView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-35],
    //[self.tableView.heightAnchor constraintEqualToConstant:100.0]
  ]];
  */
  
  [NSLayoutConstraint activateConstraints:@[
    [self.tableView.topAnchor constraintEqualToAnchor:self.view.topAnchor],
    [self.tableView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor],
    [self.tableView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor],
    [self.tableView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor],
    //[self.tableView.heightAnchor constraintEqualToConstant:100.0]
  ]];
  
  
  self.tableView.layer.cornerRadius = 16;
}
#pragma mark - Table view view customizations
//- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath{
//  return 100.0;
//}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
  return 52.0;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
  DrawColor *color = globalColors[indexPath.row];
  if (!color.isChoose) {
    //пройдем по массиву и найдем запись с флагом true
    for (DrawColor *changeColor in globalColors) {
      if (changeColor.isChoose) {
        [changeColor toggle];
      }
    }
    [globalColors[indexPath.row] toggle];
    globalColor = color;
    [self.tableView reloadData];
  }
}
//MARK:-  Private views methods
- (void)setupViews {
  [[UITableViewCell appearance] setTintColor:[UIColor redColor]];
  self.view.backgroundColor = [[UIColor alloc] initWithRed:0.9 green:0.9 blue:0.9 alpha:1.0];
  //NSAttributedString *textColor =  @{NSForegroundColorAttributeName : UIColor.redColor };
  [self.navigationController.navigationBar setTintColor:UIColor.redColor];

}

@end
