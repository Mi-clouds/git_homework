# example file for working with date and time information
from datetime import date
from datetime import datetime
from datetime import timedelta   # timedelta is a span of time and can use this to perform time based mathematics
import calendar

# construct a basic timedelta and print it
print(timedelta(days=365, hours=5, minutes=1))

# print today's date
today_1 = date.today()
print("The date today is: ", str(today_1))

now = datetime.now()
print("Today is:" + str(now))

# print out the date's individual components
print("Date components: ", today_1.day, today_1.month, today_1.year)

# retrieve today's weekday (0=Monday, 6=Sunday)
print("Today's weekday number is: ", today_1.weekday())
days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"] # use the weekday index to access the weekday from this list
print("Which is a:", days[today_1.weekday()])

# format date and time using predefined string control codes

# %y/%Y - Year, %a/%A - weekday, %b/%B - month, %d - day of month
print(now.strftime("The current year is: %Y"))
print(now.strftime("The current date is: %A, %d %b %Y"))
print(now.strftime("I repeat, the current date is: %A, %d %B, %y "))

# %I/%H - 12/24 Hour, %M - minute, %S -second, %p - locale's AM/PM
print(now.strftime("Current time: %I:%M:%S"))
print(now.strftime("Current time in 24 hour time: %H:%M:%S "))

# print today's date one year from now
print("One year from now it will be: " + str(now + timedelta(days=365)))

# create a timedelta that uses more than one argument
print("In 2 days and 3 weeks, it will be: " + str(now + timedelta(days=2, weeks=3)))

# calculate the date 1 week ago, formatted as a string
t = datetime.now() - timedelta(weeks=1)
s = t.strftime("%A %B %d, %Y")
print("One week ago it was: " + s)

d = datetime.now() - timedelta(days=365)
p = d.strftime("%Y")
print("One year ago it was:" + p)
today = date.today()
april_fools_day = date(today.year, 4, 1)
d1 = today.strftime("%d/%m/%Y")


# use date comparison to see if April Fool's has already gone for this year
# if it has, use the replace() function to get the date for next year
if april_fools_day < today:
    print("April fool's day has already went by %d days ago" % (today-april_fools_day).day)
    april_fools_day = april_fools_day.replace(year=today.year+1) # calculating the April Fool's day next year

# calculate the amount of time until April Fool's Day
time_to_afd = april_fools_day-today # create's a timedelta
print("It's just ", time_to_afd.days, "days until April Fool's Day")


# calculate when pay day is, every first thursday of every month
print("Pay day will be on: ")
for m in range(1, 13):
    cal= calendar.monthcalendar(2021, m) # get an array of the weeks in the given months
    weekone=cal[0]
    weektwo=cal[1] # the first thursday will fall in one of these two weeks. we loop to find out which it is
    if weekone[calendar.THURSDAY] != 0:
        payday = weekone[calendar.THURSDAY]
    else:
        payday = weektwo[calendar.THURSDAY]

    print("%10s %2d" % (calendar.month_name[m], payday))

