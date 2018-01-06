//
//  CollectionViewCell_5.m
//  project_t
//
//  Created by 徐晨淼 on 2017/9/17.
//  Copyright © 2017年 Christian. All rights reserved.
//

#import "CollectionViewCell_5.h"

@implementation CollectionViewCell_5

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        //商品图片
        UIImageView *goodsImg = [[UIImageView alloc]init];
        goodsImg.image = [UIImage imageNamed:@"组-13"];
        [self.contentView addSubview:goodsImg];
        self.goodsImg = goodsImg;
        
        [goodsImg mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.size.mas_equalTo(CGSizeMake(WIDTHX(405), HEIGHTX(360)));
            make.top.equalTo(self.contentView).with.offset(0);
            make.left.equalTo(self.contentView).with.offset(0);
        }];
        //价格标题
        UILabel *price = [[UILabel alloc]init];
        price.font = [UIFont systemFontOfSize:HEIGHTX(40)];
        [self.contentView addSubview:price];
        self.price = price;
        
        [price mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.size.mas_equalTo(CGSizeMake(WIDTHX(220), HEIGHTX(40)));
            make.top.equalTo(goodsImg.mas_bottom).with.offset(HEIGHTX(35));
            make.left.equalTo(self.contentView).with.offset(WIDTHX(10));
        }];
        
        //包邮按钮
        UIButton *mailBtn = [[UIButton alloc]init];
        [self.contentView addSubview:mailBtn];
        self.mailBtn = mailBtn;
        
        [mailBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.size.mas_equalTo(CGSizeMake(WIDTHX(100), HEIGHTX(50)));
            make.centerY.equalTo(price);
            make.right.equalTo(self.contentView).with.offset(-WIDTHX(32));
        }];
        //商品标题
        UILabel *goodsTitle = [[UILabel alloc]init];
        goodsTitle.font = [UIFont systemFontOfSize:HEIGHTX(40)];
        goodsTitle.textColor = [UIColor lightGrayColor];
        [self.contentView addSubview:goodsTitle];
        self.goodsTitle = goodsTitle;
        
        [goodsTitle mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.left.equalTo(self.contentView).with.offset(WIDTHX(7));
            make.top.equalTo(price.mas_bottom).with.offset(HEIGHTX(30));
            make.size.mas_equalTo(CGSizeMake(WIDTHX(405), HEIGHTX(40)));
        }];
        
        
        
        
    }
    return self;
}


@end
