//
//  ZTViewController.m
//  ZTTwoAttritedString
//
//  Created by fyzhangtong on 06/10/2021.
//  Copyright (c) 2021 fyzhangtong. All rights reserved.
//

#import "ZTViewController.h"
#import "NSMutableAttributedString+ZTTwoRow.h"
#import <NSMutableAttributedString+ZTTwoString.h>

@interface ZTViewController ()

@end

@implementation ZTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UILabel *label = [UILabel new];
    label.numberOfLines = 2;
    label.frame = CGRectMake(15, 100, 100, 60);
    
    label.attributedText = [NSMutableAttributedString attributedStringWithFirstString:@"字符串1" secondString:@"字符串2" alignment:NSTextAlignmentLeft];
    [self.view addSubview:label];
    
    
    UILabel *label1 = [UILabel new];
    label1.numberOfLines = 2;
    label1.frame = CGRectMake(150, 100, 100, 60);
    
    label1.attributedText = [NSMutableAttributedString attributedStringWithFirstString:@"字符串3" secondString:@"字符串4" alignment:NSTextAlignmentRight];
    [self.view addSubview:label1];
    
    UILabel *label2 = [UILabel new];
    label2.frame = CGRectMake(60, 200, 200, 60);
    
    label2.attributedText = [NSMutableAttributedString attributedStringWithFirstString:@"字符串5" secondString:@"字符串6" firstColor:[UIColor blueColor] secondColor:[UIColor greenColor] firstFont:[UIFont systemFontOfSize:13] secondFont:[UIFont systemFontOfSize:24] lineSpace:0 alignment:NSTextAlignmentCenter wrap:NO];
    [self.view addSubview:label2];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
