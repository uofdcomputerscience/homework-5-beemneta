import Foundation

// Start with a date, like so:

let date = Date()

let calendar = Calendar.current
// Create a date using today's date and a DateComponents structure

let today = DateComponents(calendar:calendar,year:2019,month: 10,day: 31)
let todaysDate = calendar.date(from:today)

let dateComp = calendar.component(.day, from: date) //day of date we started with

// Compare the two dates to see if they occur in the same Calendar day
print (today.day==dateComp) //comparison of the two days


// Use a date formatter

let formatter = DateFormatter()
formatter.dateFormat = "MMMM d, yyyy"
// use the formatter to print the day in a friendly format.

let friendlyDate = formatter.string(from: todaysDate!)
print (friendlyDate)
// hint, use NSDateFormatter.com to get an appropriate printing format string.
