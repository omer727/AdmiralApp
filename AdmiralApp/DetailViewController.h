//
//  DetailViewController.h
//  AdmiralApp
//
//  Created by Mac on 1/25/15.
//  Copyright (c) 2015 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UINavigationItem *detailHeader;

@end

