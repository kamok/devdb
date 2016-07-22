# Refactoring #get_nearest_transit
The first area of interest is to identify which directory to place the refactored code. I chose lib because of a similar implementation with the WalkScore feature. I moved the entire script into a location.rb, ran the test, and see that it returned the same number of errors/skips: 2 failures, 18 errors, 48 skips

## Passing self to Transit class in location.rb
The Development `model_callbacks.rb` run  `self.get_nearest_transit` inside the `location.rb`. Inside location.rb, the method `get_nearest_transit` makes a new class called `Transit` and passes the `Development` object on initialization with `Transit.new(self)`. We need to do so for 2 reason.

One is that we need to set `Development.nearest_transit` to something; either a subway station, bus station, or a "none". And two, is that we need `Development.latitude` and `Development.longitude` to make the API call to MBTA and get the transit data. 

## Building for change

I move the code that makes the API call inside the `def initialize` method of `Transit`. I make this design decision, rather than following the convention of the `WalkScore` class to put everything inside initialization for two reason. One is the single responsiblity principle in SOLID. And another is the open/closed principle. After reading the MBTA API doc and looking at dd.mapc.org, I was able to determine that the `get_nearest_transit` option could be split into `get_nearest_bus_stop` and `get_nearest_subway_station` which are both valuable and could be used by the app. 

## Misc reasoning
I left the logic for `def url` similar to `WalkScore` where the act of building the URL is a method on its own. Although I didn't use the constant variable, I do see merits to it for easy change being the first line of the class. 

Some objects and methods have longer names. I am a believer of objects being longer and convey more about its place in the code for clarity over having a short object name. 

At the end of the refactoring, we are still on  2 failures, 18 errors, 48 skips; that's fantastic. 