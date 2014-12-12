//
//  UIView+additions.m
//  FuShuo
//
//  Created by nonstriater on 14-1-26.
//  Copyright (c) 2014年 xiaoran. All rights reserved.
//

#import "UIView+additions.h"


@implementation UIView (additions)

- (void)maskWithResizableImage:(UIImage *)image{
    [self maskWithResizableImage:image padding:UIEdgeInsetsMake(0, 0, 0, 0)];
}

- (void)maskWithResizableImage:(UIImage *)image padding:(UIEdgeInsets)padding{
    
    if (!image) {
        return;
    }
    
    UIImageView *imageViewMask = [[UIImageView alloc] initWithImage:image];
    imageViewMask.frame = UIEdgeInsetsInsetRect(self.bounds, padding);
    
    self.layer.mask = imageViewMask.layer;
}


- (void)maskWithImage:(UIImage *)image resizableImage:(UIEdgeInsets)capInset padding:(UIEdgeInsets)padding{
    
    UIImage *resizableImage = [image resizableImageWithCapInsets:capInset resizingMode:UIImageResizingModeStretch];
    [self maskWithResizableImage:resizableImage padding:padding];

}



@end
