//
//  HomePageTableViewCell.m
//  AQDoubeScrolliOS
//
//  Created by Alessio on 08/11/16.
//  Copyright © 2016 Alessio. All rights reserved.
//  GNU 3 License
//

#import "HomePageTableViewCell.h"
#import "HomePageCollectionViewCell.h"

@implementation HomePageTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

#pragma mark - UICollectionViewDataSource
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.category.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *cellIdentifier = @"HomeCollectionCell";
    HomePageCollectionViewCell *collectionCell = (HomePageCollectionViewCell*) [collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    
    if(collectionCell){
        //set fields of collection cell
        NSDictionary *content = self.category[indexPath.row];
        
        NSString *stringUrl = [content objectForKey:@"Cover"];
        NSURL *coverURL = [NSURL URLWithString:stringUrl];
        collectionCell.cover.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:coverURL]];
        
    }
    
    
    return collectionCell;
    
}


@end
