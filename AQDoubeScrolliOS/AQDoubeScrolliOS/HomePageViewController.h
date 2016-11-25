//
//  ViewController.h
//  AQDoubeScrolliOS
//
//  Created by Alessio on 08/11/16.
//  Copyright © 2016 Alessio. All rights reserved.
//  GNU 3 License
//


#import <UIKit/UIKit.h>

@interface HomePageViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

