---
title: Tuning your product's engine of growth with Segment and Track.js
excerpt: "There are three main things a product company spends time and energy
          on: building the product/services, tuning the engine of growth and
          feeding the engine of growth. This article breaks down how to tune your
          product or service's engine of growth based on user activity using
          Segment.com and Track.js"
tags:
  - analytics
  - segment
  - track.js
---

There are three main things a product company spends time and energy on:

* Building the product/services
* Tuning the engine of growth (The tactics for converting non-customers into
  customers)
* Feeding the engine of growth

Many companies direct most of their focus on building the product or service's
features and feeding the engine of growth. This is great and useful! After all,
we can't tune the engine of growth without a viable product and enough
interest!

When we ignore tuning the engine of growth, we're relying on well-educated
guesses about what is valuable without verifying impact; which means we're be
spending time on stuff that, while interesting and useful, doesn't move the
needle on the business's goals.

In order to tune our engine of growth, we must instrument our product to make it
easy to answer the following questions:

* What is the percentage of (new visitors, previous visitors, registered users,
  frequent users, etc.) that make a further commitment to our product or service?
  (Say, signing up for a newsletter, creating an account, making a payment,
  creating a support ticket, referring a friend, sharing on Twitter, etc.)
* What interesting/shared characteristics do people with high inter-funnel
  conversion rates have?
* How did a release or change in marketing copy impact these inter-funnel
  conversion rates?

Until we can answer these questions, we're relying on our human judgement. By
building in mechanisms for answering these questions we begin to *test and
verify* how the work we do has an impact on our business objectives. As we learn
what value propositions move the needle on our engine of growth, we can further
tune the work we do to focus on the features, market segment, or value
proposition that both aligns with our mission and resonates with a sustainable
amount of people.

Now, this all sounds tough. After all, It's huge and nearly impossible to take
in one giant gulp. If we want to build this system of "checks and balances" on
our judgement, here's how we could go about it:

### Step 1: List Key User Activities.
This is by no means an exhaustive list, I recommend doing a [card-sorting
exercise](http://en.wikipedia.org/wiki/Card_sorting) to generate these for your
product or service.

* Discovering service
* Investigating service
* Beginning sign-up
* Moving through fields in sign-up
* Completing sign-up
* Making payment
* Emailing support
* Making another purchase
* Sharing our service
* Referring our product to a friend
* Canceling service

Note these are *not UI Events*. They are *actions people take*. We instrument
our API, applications, supporting services, and marketing content to track these
actions, *not* just what buttons or links were clicked or what gestures were
used.

### Step 2: Split Activities into Categories of Actions
While each activity is useful to track, they become more powerful if they are
categorized. This allows us to use funnels more effectively.

We've found the following categories to be useful:

* Discovery Actions (Visiting a landing page or piece of critical content)
* Exploring Actions (Investigating our about page, checking prices, following
  links to press, reading newsletter archives, etc.)
* Committing Actions (Signing up for a newsletter, following on twitter,
  beginning sign-up, etc.)
* Paying Actions (Making a payment)
* Customer-Value-Generating Actions (Using the service in a way we think is
  useful)
* Growth Actions (Referring a friend, tweeting, and other "viral" channels)

#### Step 2b: Identify What Categories of Actions or Activity A Work Task is Targeting Before Building It
This helps us determine how good we are at "calling our shots" about how tasks
impact our engine of growth. This doesn't require instrumentation; so long as
you're releasing features independently and giving them time to make a
statistically significant impact.

#### Step 2c: Instrument Each Feature's Usage Activity
This lets us track a feature's real impact on usage, and tie it directly to
our service's engine of growth. It takes a bit of effort, but provides a lot of
value.

### Step 3: Segment Our Users
If we want to glean insights into how we to direct our marketing and sales
efforts, we'll want to segment our users based on whatever data we can get.
These segments could be:

* Origin(s) (press, social media, marketing campaign, search, link)
* Target persona (socialite, traveler, ???)
* Relationship: (unregistered, recently signed in, recently bought,
  recently referred a friend, etc.)
* Location (zip code, city, possibly even conference or place of business, etc.)
* And more, depending on how detailed we want to go.

All this is hard work. There's dozens of services that need to be integrated,
and as we build out multiple apps, supporting tools, etc., we quickly realized
*there's too many different use cases for us to use a single tool* in our
insight strategy.

### Enter Segment.com

[Segment.com](http://segment.com) creates an abstraction layer around sending
events to analytics providers. With a single JavaScript, Ruby, iOS, or Android
library you can interact with literally
[hundreds](https://segment.com/integrations) of different analytics, sales,
customer support, user-testing, marketing automation, and advertising tools.

While Segment's JavaScript library is fantastic, we find it's a little bit
clunky and obscures the semantic meaning of *why* an event is being tracked.

### And Introducing Track.js


To instrument our applications with semantically meaningful user actions, we
extracted [Track.js](https://github.com/zincmade/track.js). Track.js wraps
[Segment.com](http://segment.com) and makes it easy to instrument JavaScript
applications that work with a variety of [analytics
providers](https://segment.com/integrations).

At the moment, we consider Track.js "pre-release" software, so use it at your
own risk. We're excited to build Track.js out as we use it across more projects.
If you're interested in contributing, we've got an [issue
tracker](https://waffle.io/zincmade/track.js) primed and ready for you!
