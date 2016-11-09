//
//  ViewController.m
//  AQDoubeScrolliOS
//
//  Created by Alessio on 08/11/16.
//  Copyright © 2016 Alessio. All rights reserved.
//  GNU 3 License
//

#import "HomePageViewController.h"
#import "HomePageTableViewCell.h"

@interface HomePageViewController ()

@end

@implementation HomePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UITableViewDataSource
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *cellIdentifier = @"HomeTableCell";
    HomePageTableViewCell *tableCell = (HomePageTableViewCell*) [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    return tableCell;
}


@end
