# Pour Cast

This simple weather app displays the forecast for the next 5 days. There's just one trouble -- the view is built of a ton of labels, 3 per day. If we wanted to change the way a day looks, we'd have to change each day's labels independently. Sounds like a nightmare! Let's refactor this to encapsulate the views, so that each day's forecast is an instance of a custom view. Ultimately the view controller should just have 5 subviews, each an instance of our custom class.

## Instructions

  1. Familiarize yourself with the model for the forecast data, `FISDailyForecast`.
  2. Create a view with a XIB that will represent a single day's forecast -- it should have the same 3 labels each VC had on the VC. This class should have one public property: an instance of the model class. Conceptually this will be the visual representation of a forecast model, just as a `UIImageView` is the visual representation of a `UIImage`.
  3. Override the setter of the public property from step 2 to update the contents of the labels in the view.
  4. Drop five of your custom view onto the storyboard, one per day. (You can now delete the standalone labels.)
  5. In the completion block of the API call we provided for you, create the daily forecase object and pass one to each of the views you made in step 4.

Now we have a single class that visually represents a day's forecast. Change some visuals in the XIB and see that all 5 days immediately get new change. Nice!

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/pour-cast' title='Pour Cast'>Pour Cast</a> on Learn.co and start learning to code for free.</p>
