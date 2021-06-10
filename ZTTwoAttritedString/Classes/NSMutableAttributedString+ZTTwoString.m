//
//  NSMutableAttributedString+ZTTwoString.m
//  auson
//
//  Created by zhangtong on 2021/6/10.
//

#import "NSMutableAttributedString+ZTTwoString.h"

@implementation NSMutableAttributedString (ZTTwoString)

+ (instancetype)attributedStringWithFirstString:(NSString *)firstString secondString:(NSString *)secondString firstColor:(UIColor *)firstColor secondColor:(UIColor *)secondColor firstFont:(UIFont *)firstFont secondFont:(UIFont *)secondFont lineSpace:(CGFloat)lineSpace alignment:(NSTextAlignment)alignment wrap:(BOOL)wrap
{
    NSMutableAttributedString *string;
    if (!firstString.length && !secondString.length) {
        return nil;
    }
    NSMutableArray<NSString *> *stringArray = [[NSMutableArray alloc] initWithCapacity:2];
    if ([firstString isKindOfClass:NSString.class]) {
        [stringArray addObject:firstString];
    }
    if ([secondString isKindOfClass:NSString.class]) {
        [stringArray addObject:secondString];
    }
    NSString *joinString = wrap ? @"\n" : @"";
    NSString *newString = [stringArray componentsJoinedByString:joinString];
    string = [[NSMutableAttributedString alloc] initWithString:newString];
    
    NSInteger secondRangeStart = 0;
    if (firstString) {
        [string addAttributes:@{NSFontAttributeName:firstFont,NSForegroundColorAttributeName:firstColor} range:NSMakeRange(0, firstString.length)];
        secondRangeStart = wrap ? firstString.length + 1 : firstString.length;
    }
    if (secondString) {
        [string addAttributes:@{NSFontAttributeName:secondFont,NSForegroundColorAttributeName:secondColor} range:NSMakeRange(secondRangeStart, secondString.length)];
    }
    /// 行间距
    NSMutableParagraphStyle  *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.lineSpacing = lineSpace;
    paragraphStyle.lineBreakMode = NSLineBreakByTruncatingMiddle;
    paragraphStyle.alignment = alignment;
    [string addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0,newString.length)];
    
    return string;
}

@end
