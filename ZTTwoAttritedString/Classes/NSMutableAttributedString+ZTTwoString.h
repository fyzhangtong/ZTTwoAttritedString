//
//  NSMutableAttributedString+ZTTwoString.h
//  auson
//
//  Created by zhangtong on 2021/6/10.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSMutableAttributedString (ZTTwoString)

+ (instancetype)attributedStringWithFirstString:(NSString *)firstString secondString:(NSString *)secondString firstColor:(UIColor *)firstColor secondColor:(UIColor *)secondColor firstFont:(UIFont *)firstFont secondFont:(UIFont *)secondFont lineSpace:(CGFloat)lineSpace alignment:(NSTextAlignment)alignment wrap:(BOOL)wrap;

@end

NS_ASSUME_NONNULL_END
