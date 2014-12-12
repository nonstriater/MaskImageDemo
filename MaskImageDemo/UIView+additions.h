//
//  UIView+additions.h
//  FuShuo
//
//  Created by nonstriater on 14-1-26.
//  Copyright (c) 2014年 xiaoran. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (additions)

/**
 * 设置view.layer 的mask 属性
 * 这里的image需要是已经resing过的
 *  @param image
 */
- (void)maskWithResizableImage:(UIImage *)image;
- (void)maskWithResizableImage:(UIImage *)image padding:(UIEdgeInsets)padding;
/**
 * 设置view.layer 的mask 属性
 * 这里的image需要是没有resing过的
 *
 *  @param image    orinal image
 *  @param capInset
 *  @param padding  
 */
- (void)maskWithImage:(UIImage *)image resizableImage:(UIEdgeInsets)capInset padding:(UIEdgeInsets)padding;


@end
