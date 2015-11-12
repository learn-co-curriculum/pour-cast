//
//  FISViewController.m
//  pour-cast
//
//  Created by Joe Burgess on 11/19/14.
//  Copyright (c) 2014 The Flatiron School. All rights reserved.
//

#import "FISViewController.h"
#import "ForcastAPIClient.h"
#import "FISDailyForecast.h"
#import "FISDailyForecastView.h"

@interface FISViewController ()

@property (weak, nonatomic) IBOutlet FISDailyForecastView *dayOneView;
@property (weak, nonatomic) IBOutlet FISDailyForecastView *dayTwoView;
@property (weak, nonatomic) IBOutlet FISDailyForecastView *dayThreeView;
@property (weak, nonatomic) IBOutlet FISDailyForecastView *dayFourView;
@property (weak, nonatomic) IBOutlet FISDailyForecastView *dayFiveView;

@end

@implementation FISViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    NSArray *forecastViews = @[ self.dayOneView, self.dayTwoView, self.dayThreeView, self.dayFourView, self.dayFiveView ];

    [ForcastAPIClient getForecastForCoordinate:CLLocationCoordinate2DMake(37.8267, -122.423) Completion:^(NSArray *dailyForecastModels) {
        NSUInteger forecastModelIndex = 1;
        for(FISDailyForecastView *forecastView in forecastViews) {
            forecastView.dailyForecast = dailyForecastModels[forecastModelIndex];
            forecastModelIndex++;
        }
    }];
}


@end
