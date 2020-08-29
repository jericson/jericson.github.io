---
layout: post
title: How to simplify Google Form attendence taking
tags: remote
comments: yes
---

California requires teachers to take attendance as part of the way
money is allocated to districts. In the time of distance learning,
it's not hard to see who shows up for live instruction. It might even
be easier for teachers since they get a list of attendees to internet
meetings. But teachers _also_ need to make sure students are attending
their asynchronous classwork times. (For our school, that's most
afternoons and all Friday.)

Our school has decided to collect attendance using a Google
Form. That's a reasonable approach, but it means our students need to
enter their first name, last name and the last name of their teacher
every day in order to submit attendance. They also need to find the
right URL to get to that form. For my second-grade twins, that can be
a frustration. So I decided to take my years of programming experience
and apply it to their situation.

To be clear, they still need to proactively fill in their attendance
form. And they are getting tons of practice typing things into the
computer. So my goal is to make this a 30 second process instead of
the many-minute process it can be now as my 7-year-old children fight
frustration a the end of the day. (Or get off to a rocky start doing
something annoying before the learning begins.)

The first thing I did was reverse engineer the form. This might seem
complicated or unethical, but the process is very transparent if you
know how it works. So I visited the form and entered some information:

![Completed attendance form. Text version to
follow.](/images/completed_form.png)

It requires three input fields:

* First Name&mdash;I entered my own name, "Jon", for the test.
* Last Name&mdash;"Ericson"
* Teacher (Last name only)&mdash;I can't remember my second grade
  teacher's name, so I entered "King" who was my sixth grade
  teacher. He had a profound impact on my life.
  
With that in place, I right-clicked the page in Firefox and picked the
`Inspect Element` feature:

![Right click menu that includes the "Inspect Element"
option.](/images/inspect_element.png)

Other browsers have similar functions that might be called different
names. The point is to pull up the developer tools to find the names
of the input fields of the form. Google Forms are pretty much a UI
around HTML forms to insert rows into Google Sheets using the HTTP
protocol. **Don't get scared off!** It's not as complicated as it
looks and you can ignore that technical jargon. All we need to do is
find a bit of code that looks like this:

![Inspector view. Code to follow.](/images/inspector.png)

I used Firefox's search function (top left in the image) to find the
three input fields:

```
<input type="hidden" name="entry.1828733646" value="Jon">
<input type="hidden" name="entry.761704581" value="Ericson">
<input type="hidden" name="entry.1242183593" value="King">
```

The key bits are the `name=` strings. They map an arbitrary name
assigned when the form was created to a field in the spreadsheet used
to take attendance. The `value=` part helps us map the data we want to
send to the field we want to send it to:

```
entry.1828733646 = Jon
entry.761704581  = Ericson
entry.1242183593 = King
```

Believe it or not, we are almost done. The next step is to grab the
link to the form the teacher provided:

```
https://docs.google.com/forms/d/e/1FAIpQLSey0j-WMWy36bOh_tUrDchv6VQ_40d1PA3lzTLUaWs7dyCx3g/viewform?usp=sf_link
```

No you can't hack my students' attendance. Not unless you have a
student email account at my local school. And even then, your
submissions will be clearly marked with that email making abuse easy
to track. The big long string of random letters and numbers are the
form identifier assigned when it was created. We will change the part
after the `?`:

```
?usp=sf_link
```

Now that we know the input fields, we can edit that part to pre-fill them:

```
?entry.1828733646=Jon&entry.761704581=Ericson&entry.1242183593=King
```

I don't exactly know what the `usp` field does, so I removed it. That
shouldn't matter when you submit the form, but you can leave it in, if
you want to. Now I take that part of the URL (called the [query
string](https://en.wikipedia.org/wiki/Query_string)) and put it back
on the rest of the link:

```
https://docs.google.com/forms/d/e/1FAIpQLSey0j-WMWy36bOh_tUrDchv6VQ_40d1PA3lzTLUaWs7dyCx3g/viewform?entry.1828733646=Jon&entry.761704581=Ericson&entry.1242183593=King
```

Now I can save that link for future use and it'll have my name and the
last name of my teacher pre-filled in the form. But that's still a
little awkward. Fortunately, I learned that some teachers were
directing students to their attendance forms [using QR
codes](https://www.youtube.com/watch?v=XlUZz4XELkw) back when they had
live instruction. With that idea in mind, I found [a website for
generating QR codes](https://www.qr-code-generator.com/) and generated
this:

![QR code for my link.](/images/attendence_qr.png)

Since I have twins, I changed the names in the query string and
generated two more QR codes using their favorite colors. The plan is
to print out the images, post them on their walls and have them scan
in every day to verify their attendance. I'll let you know if it works!
