//
//  ViewController.m
//  LanguageDuo
//
//  Created by 陈华谋 on 2017/6/20.
//  Copyright © 2017年 陈华谋. All rights reserved.
//

#import "ViewController.h"
#import "CHMLanguageTool.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController
- (IBAction)action:(id)sender {
    
    [[CHMLanguageTool sharedInstance] changeNowLanguage];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = CHMGetStringWithKeyFromTable(@"RootTitle", @"Demo");
    self.label.text = CHMGetStringWithKeyFromTable(@"NowLanguage", @"Demo");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
