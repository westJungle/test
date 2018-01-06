//
//  TableViewCell_2.m
//  project_t
//
//  Created by 徐晨淼 on 2017/9/8.
//  Copyright © 2017年 Christian. All rights reserved.
//

#import "TableViewCell_2.h"
#import "CollectionViewCell.h"
static NSString * const identifier = @"collectionCell";
@interface TableViewCell_2 ()<UICollectionViewDelegate,UICollectionViewDataSource>

@end
@implementation TableViewCell_2

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        UILabel *groupLab = [[UILabel alloc]init];
        groupLab.text = @"头条";
        groupLab.font = [UIFont systemFontOfSize:HEIGHTX(40)];
        [self.contentView addSubview:groupLab];
        [groupLab mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.size.mas_equalTo(CGSizeMake(WIDTHX(200), HEIGHTX(45)));
            make.top.equalTo(self.contentView).with.offset(HEIGHTX(25));
            make.left.equalTo(self.contentView).with.offset(10);
        }];
        
        [self loadCollection];
        
        self.backgroundColor = [UIColor whiteColor];
    }
    
    return self;
}

- (void)loadCollection {
    
    UICollectionViewFlowLayout *flow = [[UICollectionViewFlowLayout alloc]init];
    flow.itemSize = CGSizeMake(WIDTHX(645),HEIGHTX(240));
    [flow setScrollDirection:UICollectionViewScrollDirectionHorizontal];
    UICollectionView *collection = [[UICollectionView alloc]initWithFrame:CGRectMake(WIDTHX(25),HEIGHTX(90), WIDTH, HEIGHTX(250)) collectionViewLayout:flow];
    [collection setShowsHorizontalScrollIndicator:NO];
    [collection setBounces:NO];
    collection.delegate = self;
    collection.dataSource = self;
    [collection registerClass:[CollectionViewCell class] forCellWithReuseIdentifier:identifier];
    [self.contentView addSubview:collection];
    collection.backgroundColor = [UIColor whiteColor];
    self.collection = collection;
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 3;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
    
    return cell;
}


@end
