//
//  NSMutableAttributedString+ZTTwoRow.h
//  auson
//
//  Created by zhangtong on 2021/5/27.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSMutableAttributedString (ZTTwoRow)

+ (instancetype)attributedStringWithFirstString:(NSString *)firstString secondString:(NSString *)secondString;

+ (instancetype)attributedStringWithFirstString:(NSString *)firstString secondString:(NSString *)secondString alignment:(NSTextAlignment)alignment;

+ (instancetype)attributedStringWithFirstString:(NSString *_Nullable)firstString secondString:(NSString *_Nullable)secondString firstColor:(UIColor *)firstColor secondColor:(UIColor *)secondColor firstFont:(UIFont *)firstFont secondFont:(UIFont *)secondFont lineSpace:(CGFloat)lineSpace alignment:(NSTextAlignment)alignment;

@end

NS_ASSUME_NONNULL_END
