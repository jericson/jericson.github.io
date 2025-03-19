---
layout: post
title: Sharing an Outlook calendar with GCal
comments: yes
tags: remote
---

Our organization is moving from Outlook to Google Suite.[^1] Shifting
to a new email and Google Docs hasn't been too hard. To be honest,
we've been using Google Docs already since it's easier to share
outside of the company. (This is critical for our work.) But updating
calendars is a pain.

Fortunately, I found out how to export an Outlook calendar and import
it using an iCalendar (`.ics`) file. Getting that file is a bit of a
challenge, as it turns out. I couldn't find a way to get it from
Microsoft Teams and Outlook Calendar requires sending an email that
includes a link to the file you need to import.

1. Go to [Outlook Calendar](https://outlook.office.com/calendar).
2. Select the "Share" button from the menu ribbon.
3. Enter the Google email associated with your GCal.[^2] Pick the
   level of sharing and press the "Share" button.
   
   ![Sharing from
   Outlook Calendar](/images/outlook_share.png)

4. Now go to your Google email and find the subject line "You're
   invited to share this calendar".
5. Look for the small print line that reads "Having trouble viewing
   the calendar? Try adding an Internet calendar and providing this
   URL. "
6. Copy the URL.
7. In Google Calendar select the **+** button next to "Other
   calendars" in the left-side navigation.
   
   ![Import from URL](/images/gcal_import.png)

8. Pick "From URL" and paste in the URL you copied in step #6.
9. All's well that ends well.

Google Calendar works a lot better than Microsoft's software for
[remote communication](/2020/03/09/remote_tips.html). It's not clear
from looking at feature list why this is, but Google has consistently
made better collaboration products than Microsoft for as long as I can
remember.




[^1]: Which is now, apparently, called [Google
    Workspace](https://workspace.google.com/).

[^2]: I haven't tested it, but I don't even think it matters what
    email you send it to as long as you can get the URL from it.
