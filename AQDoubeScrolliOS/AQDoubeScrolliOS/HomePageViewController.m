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

@property(nonatomic, strong) NSMutableArray *ArrayOfCategories;

@end

@implementation HomePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.ArrayOfCategories = [NSMutableArray new];
    
    [self fillArray];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - private method
-(void)fillArray{
//this code is for only popolate array for example, for real application in this block put parser json or
//  xml
    for (int i=0; i<10; i++) {
        NSMutableDictionary *categoryDict= [NSMutableDictionary new];
        NSMutableArray *contents = [NSMutableArray new];
        for(int j=0; j<7; j++){
            if(j%2 ==0){        //Use a different Title and img
                NSDictionary *contentEven = @{
                                              @"Title" : [NSString stringWithFormat:@"TitleEven---%d", j],
                                              @"Cover" : @"http://raumrot.com/wp-content/uploads/2016/01/msp_1405_1460.jpg",
                                              };
                [contents addObject:contentEven];
            }else{
                NSDictionary *contentOdd = @{
                                             @"Title" : [NSString stringWithFormat:@"TitleOdd---%d", j],
                                             @"Cover" : @"http://raumrot.com/wp-content/uploads/2016/01/msp_0903_3558.jpg",
                                             };
                [contents addObject:contentOdd];
                
            }
        }
        
        [categoryDict setObject:[NSString stringWithFormat:@"NameCategory___%d", i] forKey:@"CategoryName"];
        [categoryDict setObject:contents forKey:@"arrayContents"];
        [self.ArrayOfCategories addObject:categoryDict];
    }
    //ATTENTION this istruction is fundamental for the correct use of table view
    [self.tableView reloadData];
}


#pragma mark - UITableViewDataSource
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.ArrayOfCategories.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *cellIdentifier = @"HomeTableCell";
    HomePageTableViewCell *tableCell = (HomePageTableViewCell*) [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if(!tableCell){
        tableCell = [[HomePageTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    //set cell fields
    NSDictionary *dictionary = self.ArrayOfCategories[indexPath.row];
   
    tableCell.category = [dictionary objectForKey:@"arrayContents"];
    
    tableCell.titleSectionLbl.text = [dictionary objectForKey:@"CategoryName"];
    
    return tableCell;
}


@end
