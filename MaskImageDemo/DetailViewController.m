//
//  DetailViewController.m
//  MaskImageDemo
//
//  Created by null on 14-12-12.
//  Copyright (c) 2014年 nonstriater. All rights reserved.
//

#import "DetailViewController.h"
#import "UIView+additions.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        //self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
    
    [_imageView maskWithImage:[UIImage imageNamed:@"bubble_regular"] resizableImage:UIEdgeInsetsMake(20, 20, 20, 30) padding:UIEdgeInsetsMake(0, 0, 0, 0)];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
