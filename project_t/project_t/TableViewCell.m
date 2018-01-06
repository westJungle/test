//
//  TableViewCell.m
//  project_t
//
//  Created by 徐晨淼 on 2017/9/7.
//  Copyright © 2017年 Christian. All rights reserved.
//

#import "TableViewCell.h"
#import <Masonry.h>

@interface TableViewCell ()

@end
@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
 
    // width:400 height:510
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        UIButton *userIcon = [[UIButton alloc]init];
        [userIcon setImage:[UIImage imageNamed:@"胖虎"] forState:UIControlStateNormal];
        userIcon.layer.cornerRadius = WIDTHX(335)/2;
        userIcon.layer.masksToBounds = YES;
        [self.contentView addSubview:userIcon];
        self.userIcon = userIcon;
        [userIcon mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.size.mas_equalTo(CGSizeMake(WIDTHX(335), WIDTHX(335)));
            make.top.equalTo(self.contentView).with.offset(HEIGHTX(5));
            make.left.equalTo(self.contentView).with.offset(WIDTHX(25));
        }];
        
        
        UILabel *nickName = [[UILabel alloc]init];
        nickName.text = @"陈丹青";
        nickName.font = [UIFont systemFontOfSize:HEIGHTX(50)];
        [self.contentView addSubview:nickName];
        [nickName mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.size.mas_equalTo(CGSizeMake(WIDTHX(200), HEIGHTX(50)));
            make.top.equalTo(self.contentView).with.offset(HEIGHTX(25));
            make.left.equalTo(userIcon.mas_right).with.offset(HEIGHTX(38));
        }];
        
        
        UIButton *attention = [[UIButton alloc]init];
        [attention setImage:[UIImage imageNamed:@"加关注"] forState:UIControlStateNormal];
        [self.contentView addSubview:attention];
        self.attention = attention;
        [attention mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.size.mas_equalTo(CGSizeMake(WIDTHX(260), HEIGHTX(85)));
            make.top.equalTo(self.contentView).with.offset(2);
            make.right.equalTo(self.contentView).with.offset(-WIDTHX(20));
            
        }];
        
        
        UILabel *friendGroup = [[UILabel alloc]init];
        friendGroup.textAlignment = NSTextAlignmentCenter;
        friendGroup.text = @"朋友圈";
        friendGroup.font = [UIFont systemFontOfSize:HEIGHTX(40)];
        [self.contentView addSubview:friendGroup];
        self.friendGroup = friendGroup;
        [friendGroup mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.size.mas_equalTo(CGSizeMake(WIDTHX(150), HEIGHTX(40)));
            make.left.equalTo(userIcon.mas_right).with.offset(WIDTHX(38));
            make.top.equalTo(nickName.mas_bottom).with.offset(HEIGHTX(40));
        }];
        
        UILabel *FGCount = [[UILabel alloc]init];
        FGCount.textAlignment = NSTextAlignmentCenter;
        FGCount.text = @"666";
        FGCount.font = [UIFont systemFontOfSize:HEIGHTX(40)];
        [self.contentView addSubview:FGCount];
        self.FGCount = FGCount;
        [FGCount mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.size.mas_equalTo(CGSizeMake(WIDTHX(150), HEIGHTX(40)));
            make.top.equalTo(friendGroup.mas_bottom).with.offset(HEIGHTX(5));
            make.left.equalTo(userIcon.mas_right).with.offset(WIDTHX(38));
        }];
        
        UILabel *fans = [[UILabel alloc]init];
        fans.text = @"粉丝";
        fans.textAlignment = NSTextAlignmentCenter;
        fans.font = [UIFont systemFontOfSize:HEIGHTX(40)];
        [self.contentView addSubview:fans];
        self.fans = fans;
        [fans mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.size.mas_equalTo(CGSizeMake(WIDTHX(150), HEIGHTX(40)));
            make.left.equalTo(friendGroup.mas_right).with.offset(WIDTHX(50));
            make.centerY.mas_equalTo(friendGroup);
            
        }];
        
        UILabel *FansCount = [[UILabel alloc]init];
        FansCount.textAlignment = NSTextAlignmentCenter;
        FansCount.text = @"666";
        FansCount.font = [UIFont systemFontOfSize:HEIGHTX(40)];
        [self.contentView addSubview:FansCount];
        self.FansCount = FansCount;
        [FansCount mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.size.mas_equalTo(CGSizeMake(WIDTHX(150), HEIGHTX(40)));
            make.centerY.mas_equalTo(FGCount);
            make.centerX.mas_equalTo(fans);
        }];
        
        UILabel *userIntro = [[UILabel alloc]init];
        userIntro.numberOfLines = 0;
        userIntro.text = @"中国当代著名学者,诗人,中央美术学院院长.";
        userIntro.font = [UIFont systemFontOfSize:HEIGHTX(40)];
        [self.contentView addSubview:userIntro];
        self.userIntro = userIntro;
        [userIntro mas_makeConstraints:^(MASConstraintMaker *make) {
            make.height.mas_equalTo(HEIGHTX(110));
            make.top.equalTo(FansCount.mas_bottom).with.offset(HEIGHTX(10));
            make.left.equalTo(userIcon.mas_right).with.offset(WIDTHX(38));
            make.right.equalTo(self.contentView).with.offset(-WIDTHX(20));
        }];
        
        
    }
    
    return self;
}



@end
