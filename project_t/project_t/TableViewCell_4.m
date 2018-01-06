//
//  TableViewCell_4.m
//  project_t
//
//  Created by 徐晨淼 on 2017/9/8.
//  Copyright © 2017年 Christian. All rights reserved.
//

#import "TableViewCell_4.h"

#import "CollectionViewCell_3.h"
static NSString * const identifier = @"collectionCell";
@interface TableViewCell_4 ()<UICollectionViewDelegate,UICollectionViewDataSource>
@property (nonatomic,strong) NSArray *dataSource;
@end
@implementation TableViewCell_4

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
        groupLab.text = @"视频";
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
        
        self.dataSource = @[@"组-61",@"组-62",@"组-63"];
        
        [self loadCollectionView];
        
    }
    
    return self;
}

- (void)loadCollectionView {
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
    layout.itemSize = CGSizeMake(WIDTHX(400), HEIGHTX(470));
    [layout setScrollDirection:UICollectionViewScrollDirectionHorizontal];
    
    UICollectionView *collection = [[UICollectionView alloc]initWithFrame:CGRectMake(WIDTHX(25), HEIGHTX(90), WIDTH, HEIGHTX(470)) collectionViewLayout:layout];
    collection.bounces = NO;
    collection.showsHorizontalScrollIndicator = NO;
    collection.delegate = self;
    collection.dataSource = self;
    collection.backgroundColor = [UIColor whiteColor];
    [collection registerClass:[CollectionViewCell_3 class] forCellWithReuseIdentifier:identifier];
    [self.contentView addSubview:collection];
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return self.dataSource.count;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CollectionViewCell_3 *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
    cell.videoContent.image = [UIImage imageNamed:self.dataSource[indexPath.item]];
    
    
    return cell;
    
}






@end
