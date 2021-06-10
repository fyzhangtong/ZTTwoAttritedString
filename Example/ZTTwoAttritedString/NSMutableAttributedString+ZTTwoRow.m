//
//  NSMutableAttributedString+ZTTwoRow.m
//  auson
//
//  Created by zhangtong on 2021/5/27.
//

#import "NSMutableAttributedString+ZTTwoRow.h"
#import "NSMutableAttributedString+ZTTwoString.h"

@implementation NSMutableAttributedString (ZTTwoRow)

+ (instancetype)attributedStringWithFirstString:(NSString *)firstString secondString:(NSString *)secondString
{
    return [self attributedStringWithFirstString:firstString secondString:secondString firstColor:[UIColor cyanColor] secondColor:[UIColor redColor] firstFont:[UIFont fontWithName:@"PingFangSC-Regular" size:12] secondFont:[UIFont fontWithName:@"PingFangSC-Regular" size:13] lineSpace:5 alignment:NSTextAlignmentNatural];
}

+ (instancetype)attributedStringWithFirstString:(NSString *)firstString secondString:(NSString *)secondString alignment:(NSTextAlignment)alignment
{
    return [self attributedStringWithFirstString:firstString secondString:secondString firstColor:[UIColor cyanColor] secondColor:[UIColor redColor] firstFont:[UIFont fontWithName:@"PingFangSC-Regular" size:12] secondFont:[UIFont fontWithName:@"PingFangSC-Regular" size:13] lineSpace:5 alignment:alignment];
}

+ (instancetype)attributedStringWithFirstString:(NSString *)firstString secondString:(NSString *)secondString firstColor:(UIColor *)firstColor secondColor:(UIColor *)secondColor firstFont:(UIFont *)firstFont secondFont:(UIFont *)secondFont lineSpace:(CGFloat)lineSpace alignment:(NSTextAlignment)alignment
{
    return [NSMutableAttributedString attributedStringWithFirstString:firstString secondString:secondString firstColor:firstColor secondColor:secondColor firstFont:firstFont secondFont:secondFont lineSpace:lineSpace alignment:alignment wrap:YES];
}

@end
