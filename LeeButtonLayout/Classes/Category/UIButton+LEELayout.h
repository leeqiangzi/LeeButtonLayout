//
//  UIButton+LEELayout.h
//  LeeButtonLayout_Example
//
//  Created by qiangzhi on 2022/1/31.
//  Copyright © 2022 CodeQiangZi. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (LEELayout)

typedef NS_ENUM(NSUInteger, LeeLayoutStatus){
    /** 正常位置，图左字右 */
    LeeLayoutStatusNormal,
    /** 图右字左 */
    LeeLayoutStatusImageRight,
    /** 图上字下 */
    LeeLayoutStatusImageTop,
    /** 图下字上 */
    LeeLayoutStatusImageBottom,
};

- (void)wj_layoutWithStatus:(LeeLayoutStatus)status
                  andMargin:(CGFloat)margin;

@end

NS_ASSUME_NONNULL_END
