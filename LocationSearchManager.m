

#import "LocationSearchManager.h"

@implementation LocationSearchManager

@synthesize bridge = _bridge;

RCT_EXPORT_MODULE()

#pragma mark -
#pragma mark RCT Exports

RCT_EXPORT_METHOD(searchForLocations:(NSString *)searchText callback:(RCTResponseSenderBlock)callback)
{
  MKLocalSearchRequest *searchRequest = [[MKLocalSearchRequest alloc] init];
  [searchRequest setNaturalLanguageQuery:searchText];
  
  MKLocalSearch *localSearch = [[MKLocalSearch alloc] initWithRequest:searchRequest];
  [localSearch startWithCompletionHandler:^(MKLocalSearchResponse *response, NSError *error) {
    
    if (!error) {
      NSMutableArray *RCTReponse = [[NSMutableArray alloc] init];
      
      for (MKMapItem *mapItem in [response mapItems]) {
        NSMutableDictionary *formedLocation = [[NSMutableDictionary alloc] init];
        
        [formedLocation setValue: mapItem.name forKey:@"name"];
        [formedLocation setValue:[[mapItem placemark] title] forKey:@"title"];
        
        [RCTReponse addObject:formedLocation];
      }
      
      callback(@[[RCTReponse copy]]);
      
    } else {
      NSLog(@"search location error");
    }
  }];
}

@end
