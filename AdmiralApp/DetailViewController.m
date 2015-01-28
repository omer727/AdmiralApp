//
//  DetailViewController.m
//  AdmiralApp
//
//  Created by Mac on 1/25/15.
//  Copyright (c) 2015 Mac. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@property NSMutableArray  *_items;

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
        
        self.detailHeader.title = [self.detailItem description];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
    
    self._items = [[NSMutableArray alloc] init];
    
    [self._items addObject:[self.detailHeader.title stringByAppendingString: @"_1"]];
    [self._items addObject:[self.detailHeader.title stringByAppendingString: @"_2"]];
    [self._items addObject:[self.detailHeader.title stringByAppendingString: @"_3"]] ;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self._items.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (!cell){
        cell = [[UITableViewCell alloc] init];
    }
    cell.textLabel.text = [self._items[indexPath.row] description];
//    cell.imageView = [[UIImage imageNamed:@"passed_small.png"] retain];
//    UIImageView *imgview=[[UIImageView alloc]init];
//    imgview.frame=[[UIScreen mainScreen] applicationFrame];
    cell.imageView.image = [UIImage imageNamed:@"passed_small.png"];
    return cell;
}

@end
