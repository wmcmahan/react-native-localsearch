# React-Native-LocalSearch
React Native Module for IOS MapKit Local Search

## Getting Libary into Project

1. Not on npm yet, but in the meantime clone or download this repo to you project directory
2. `cd` into React-Native-LocalSearch and `npm install`
3. In XCode's project navigator, right click `Libraries` and `Add Files to [your project's name]`
4. Find your `React-Native-LocalSearch` directory and add `RNLocalSearch.xcodeproj`
5. Add `libRNLocalSearch.a` to your project's `Build Phases` and `Link Binary With Libraries`
6. Click `RNLocalSearch.xcodeproj` in the project navigator and go the `Build Settings` tab. Make sure 'All' is toggled on (instead of 'Basic'). Look for `Header Search Paths` and make sure it contains `$(SRCROOT)/node_modules/react-native/React` and mark as `recursive`.

## Usage

Local Search currently utilizes a single method.

```javascript
var RNLocalSearch = require('react-native').NativeModules.RNLocalSearch;
RNLocalSearch.searchForLocations(searchString, callback(err, resp) =>{});
```
