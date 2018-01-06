//
//  TableViewCell_3.m
//  project_t
//
//  Created by 徐晨淼 on 2017/9/8.
//  Copyright © 2017年 Christian. All rights reserved.
//

#import "TableViewCell_3.h"
#import "CollectionViewCell_2.h"
static NSString * const identifier = @"collectionCell";
@interface TableViewCell_3 ()<UICollectionViewDelegate,UICollectionViewDataSource>
@property (nonatomic,strong) NSArray *array;
@end
@implementation TableViewCell_3

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
        groupLab.text = @"直播";
        groupLab.font = [UIFont systemFontOfSize:HEIGHTX(40)];
        [self.contentView addSubview:groupLab];
        [groupLab mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.size.mas_equalTo(CGSizeMake(WIDTHX(200), HEIGHTX(45)));
            make.top.equalTo(self.contentView).with.offset(HEIGHTX(25));
            make.left.equalTo(self.contentView).with.offset(10);
        }];
        
        UIButton *button = [[UIButton alloc]init];
        [button setImage:[UIImage imageNamed:@"形状-2"] forState:UIControlStateNormal];
        [self.contentView addSubview:button];
        [button mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.size.mas_equalTo(CGSizeMake(HEIGHTX(45), HEIGHTX(45)));
            make.centerY.mas_equalTo(groupLab);
            make.right.equalTo(self.contentView).with.offset(-WIDTHX(25));
        }];
        
        self.array = @[@"组-58",@"组-59",@"组-60"];
        
        [self loadCollection];
        
        self.backgroundColor = [UIColor whiteColor];
    }
    
    return self;
}



- (void)loadCollection {
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
    layout.itemSize = CGSizeMake(WIDTHX(400), HEIGHTX(470));
    [layout setScrollDirection:UICollectionViewScrollDirectionHorizontal];
    
    UICollectionView *collection = [[UICollectionView alloc]initWithFrame:CGRectMake(WIDTHX(25), HEIGHTX(90), WIDTH, HEIGHTX(470)) collectionViewLayout:layout];
    
    collection.delegate = self;
    collection.dataSource = self;
    collection.bounces = NO;
    collection.showsHorizontalScrollIndicator = NO;
    [collection registerClass:[CollectionViewCell_2 class] forCellWithReuseIdentifier:identifier];
    collection.backgroundColor = [UIColor whiteColor];
    [self.contentView addSubview:collection];
    
    self.collection = collection;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return self.array.count;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    
    CollectionViewCell_2 *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
    cell.userImg.image = [UIImage imageNamed:self.array[indexPath.item]];
    
    if (indexPath.item == 0) {
        
        
        
    } else {
        
        cell.showTime.hidden = YES;
        
    }
    
    
    
    
    return cell;
}







@end
