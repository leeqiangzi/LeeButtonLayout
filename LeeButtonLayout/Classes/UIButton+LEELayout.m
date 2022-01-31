//
//  UIButton+LEELayout.m
//  LeeButtonLayout_Example
//
//  Created by qiangzhi on 2022/1/31.
//  Copyright © 2022 CodeQiangZi. All rights reserved.
//

#import "UIButton+LEELayout.h"

@implementation UIButton (LEELayout)

- (void)wj_layoutWithStatus:(LeeLayoutStatus)status
                  andMargin:(CGFloat)margin {
    CGFloat imgWidth = self.imageView.bounds.size.width;
    CGFloat imgHeight = self.imageView.bounds.size.height;
    CGFloat labWidth = self.titleLabel.bounds.size.width;
    CGFloat labHeight = self.titleLabel.bounds.size.height;
    CGSize textSize = [self.titleLabel.text sizeWithAttributes:@{NSFontAttributeName:self.titleLabel.font}];
    CGSize frameSize = CGSizeMake(ceilf(textSize.width), ceilf(textSize.height));
    if (labWidth < frameSize.width) {
        labWidth = frameSize.width;
    }
    CGFloat kMargin = margin / 2.0;
    switch (status) {
        case LeeLayoutStatusNormal: {
            [self setImageEdgeInsets:UIEdgeInsetsMake(0, -kMargin, 0, kMargin)];
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, kMargin, 0, -kMargin)];
        }
            break;
        case LeeLayoutStatusImageRight: {
            [self setImageEdgeInsets:UIEdgeInsetsMake(0, labWidth + kMargin, 0, -labWidth - kMargin)];
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -imgWidth - kMargin, 0, imgWidth + kMargin)];
        }
            break;
        case LeeLayoutStatusImageTop: {
            [self setImageEdgeInsets:UIEdgeInsetsMake(0, 0, labHeight + margin, -labWidth)];
            [self setTitleEdgeInsets:UIEdgeInsetsMake(imgHeight + margin, -imgWidth, 0, 0)];
        }
            break;
        case LeeLayoutStatusImageBottom: {
            [self setImageEdgeInsets:UIEdgeInsetsMake(labHeight + margin,0, 0, -labWidth)];
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -imgWidth, imgHeight + margin, 0)];
        }
            break;
        default:
            break;
    }
}

@end
