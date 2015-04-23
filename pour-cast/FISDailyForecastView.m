//
//  FISDailyForecastView.m
//  pour-cast
//
//  Created by Timothy Clem on 4/16/15.
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import "FISDailyForecastView.h"


@interface FISDailyForecastView ()

@property (nonatomic, strong) IBOutlet UIView *view;
@property (nonatomic, strong) IBOutlet UILabel *dateLabel;
@property (nonatomic, strong) IBOutlet UILabel *highLabel;
@property (nonatomic, strong) IBOutlet UILabel *lowLabel;

@property (nonatomic, strong) NSDateFormatter *dateFormatter;

@end


@implementation FISDailyForecastView

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if(self) {
        [self commonInit];
    }

    return self;
}

-(instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if(self) {
        [self commonInit];
    }

    return self;
}

-(void)commonInit
{
    [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class])
                                  owner:self
                                options:nil];

    [self addSubview:_view];

    _dateFormatter = [[NSDateFormatter alloc] init];
    [_dateFormatter setDateFormat:@"MM/dd"];
}

-(void)setDailyForecast:(FISDailyForecast *)dailyForecast
{
    _dailyForecast = dailyForecast;

    self.dateLabel.text = [self.dateFormatter stringFromDate:dailyForecast.date];
    self.highLabel.text = [NSString stringWithFormat:@"High: %.1fF", dailyForecast.temperatureMax];
    self.lowLabel.text = [NSString stringWithFormat:@"Low: %.1fF", dailyForecast.temperatureMin];
}

@end
