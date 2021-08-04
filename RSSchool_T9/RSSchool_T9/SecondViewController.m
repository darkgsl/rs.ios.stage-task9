//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Sergey Gomolko
// On: 7/28/21
// 
// Copyright © 2021 RSSchool. All rights reserved.

#import "SecondViewController.h"
#import "DrawTableViewCell.h"
#import "Test.h"
DrawColor *globalColor;
NSString *cellReuseIdentifier = @"UITableViewCell";
NSString *captionCell_0 = @"Draw stories";
NSString *captionCell_1 = @"Stroke color";
UInt32 const startColor = 0xe87aa4;
//NSArray<NSNumber *> *colorsHex = @[[NSNumber numberWithInt:0xbe2813], nil];
NSArray<DrawColor *> *globalColors ;
@interface SecondViewController ()

@property (nonatomic, strong) UITableView *tableView;


@end

@implementation SecondViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  [self setStartColor];
  [self setupViews];
  [self setupTableView];
  
  
  [self setupColors];
  Test *test = [Test new];
  test.message = @"Hello  there";
  [test printMessage];
  
  
  // Do any additional setup after loading the view.
  
  //NSLog(@"viewDidLoad %s", __PRETTY_FUNCTION__);
}
- (void)viewWillAppear:(BOOL)animated{
  [self.tableView reloadData];
}

//MARK:-  Private views methods
-(void)setStartColor{
  globalColor = [[DrawColor alloc] initWithHex:startColor];
}
- (void)setupColors{
  
  UInt32 color1 = 0xbe2813;
  DrawColor *DrawColor1 = [[DrawColor alloc] initWithHex:color1];
  UInt32 color2 = 0x3802da;
  DrawColor *DrawColor2 = [[DrawColor alloc] initWithHex:color2];
  UInt32 color3 = 0x467c24;
  DrawColor *DrawColor3 = [[DrawColor alloc] initWithHex:color3];
  UInt32 color4 = 0x808080;
  DrawColor *DrawColor4 = [[DrawColor alloc] initWithHex:color4];
  UInt32 color5 = 0x8e5af7;
  DrawColor *DrawColor5 = [[DrawColor alloc] initWithHex:color5];
  UInt32 color6 = 0xf07f5a;
  DrawColor *DrawColor6 = [[DrawColor alloc] initWithHex:color6];
  UInt32 color7 = 0xf3af22;
  DrawColor *DrawColor7 = [[DrawColor alloc] initWithHex:color7];
  UInt32 color8 = 0x3dacf7;
  DrawColor *DrawColor8 = [[DrawColor alloc] initWithHex:color8];
  UInt32 color9 = 0xe87aa4;
  DrawColor *DrawColor9 = [[DrawColor alloc] initWithHex:color9];
  [DrawColor9 toggle];
  UInt32 color10 = 0x0f2e3f;
  DrawColor *DrawColor10 = [[DrawColor alloc] initWithHex:color10];
  UInt32 color11 = 0x213711;
  DrawColor *DrawColor11 = [[DrawColor alloc] initWithHex:color11];
  UInt32 color12 = 0x511307;
  DrawColor *DrawColor12= [[DrawColor alloc] initWithHex:color12];
  UInt32 color13 = 0x92003b;
  DrawColor *DrawColor13 = [[DrawColor alloc] initWithHex:color13];
  
  globalColors = [[NSArray alloc] initWithObjects:DrawColor1, DrawColor2, DrawColor3, DrawColor4, DrawColor5, DrawColor6, DrawColor7, DrawColor8, DrawColor9, DrawColor10, DrawColor11, DrawColor12, DrawColor13, nil];
}


- (void)setupViews {
  self.view.backgroundColor = [[UIColor alloc] initWithRed:0.9 green:0.9 blue:0.9 alpha:1.0];
  // UIColor.blueColor;
  self.navigationItem.title = @"Settings";
  
  
  //setup views
  
}
//MARK:-  setup tableView
- (void)setupTableView {
  self.tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleInsetGrouped];
  //self.tableView = [[UITableView alloc] init];
  self.tableView.insetsContentViewsToSafeArea = true;
  self.tableView.translatesAutoresizingMaskIntoConstraints = NO;
  self.tableView.delegate = self;
  self.tableView.dataSource = self;
  [self.tableView registerClass:UITableViewCell.class forCellReuseIdentifier:cellReuseIdentifier];
  [self.view addSubview:self.tableView];
  //CGRect rect = CGRectMake(0, 0, 343, 104);
  //[self.tableView setFrame:rect];
  
  //  [NSLayoutConstraint activateConstraints:@[
  //    [self.tableView.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:120],
  //    //[self.tableView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-650],
  //    [self.tableView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:36],
  //    [self.tableView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-35],
  //    [self.tableView.heightAnchor constraintEqualToConstant:100.0]
  //  ]];
  
  [NSLayoutConstraint activateConstraints:@[
    [self.tableView.topAnchor constraintEqualToAnchor:self.view.topAnchor],
    [self.tableView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor],
    [self.tableView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor],
    [self.tableView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor],
    
  ]];
  
  self.tableView.layer.cornerRadius = 16;
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  
  return 2;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  if (indexPath.row == 0) {
    DrawTableViewCell *cell =  [tableView dequeueReusableCellWithIdentifier:captionCell_0];
    if (!cell) {
      cell = [[DrawTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:captionCell_0];
      [cell setSelectionStyle: UITableViewCellSelectionStyleNone];
      cell.textLabel.text = captionCell_0;
      [cell.textLabel setFont:[UIFont systemFontOfSize:17.0 weight:UIFontWeightRegular]];
      [cell.switchButton setOn:true];;
      [cell.switchButton addTarget:self action:@selector(switchPressed) forControlEvents:UIControlEventValueChanged];
    }
    
    return cell;
  } else {
    UITableViewCell *cell =  [tableView dequeueReusableCellWithIdentifier:captionCell_1];
    if (!cell) {
      cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:captionCell_1];
      cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
      
      cell.textLabel.text = captionCell_1;
      [cell.textLabel setFont:[UIFont systemFontOfSize:17.0 weight:UIFontWeightRegular]];
      [cell.detailTextLabel setFont:[UIFont systemFontOfSize:12.0 weight:UIFontWeightRegular]];
      //cell.detailTextLabel.text =  globalColor.title;
      
      NSAttributedString *textWithColor = [[NSAttributedString alloc] initWithString : globalColor.title
                                                                          attributes : @{
                                                                            NSForegroundColorAttributeName : globalColor.color }];
      
      [cell.detailTextLabel setAttributedText:textWithColor];
    } else {
      NSAttributedString *textWithColor = [[NSAttributedString alloc] initWithString : globalColor.title
                                                                          attributes : @{
                                                                            NSForegroundColorAttributeName : globalColor.color }];
      
      [cell.detailTextLabel setAttributedText:textWithColor];
    }
    
    return cell;
  }
}

#pragma mark - Table view view customizations
//- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath{
//  return 100.0;
//}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
  return 50.0;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
  if (indexPath.row == 1) {
    ColorsViewController *viewController = [ColorsViewController new];
    //viewController.drawning = globalPicture;
    
    [self.navigationController pushViewController:viewController animated:YES];
  }
}
#pragma mark - Selectors
-(void)switchPressed {
 // NSLog(@"switchPressed HIIIII");
}
@end
