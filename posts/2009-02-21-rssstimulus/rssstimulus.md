RSS Hits the Big Time
=====================

February 21, 2009

[Original link](http://www.aaronsw.com/weblog/rssstimulus)

* * * * *

As [chaunceyt pointed
out](http://groups.google.com/group/sunlightlabs/browse_thread/thread/dfd9fd76be9b6f1b),
the new stimulus bill’s [implementation
instructions](http://www.recovery.gov/files/Initial%20Recovery%20Act%20Implementing%20Guidance.pdf)
require that each government agency report the money it gives out in
RSS:

> For each of the near term reporting requirements (major
> communications, formula block grant allocations, weekly reports)
> agencies are required to provide a feed (preferred: Atom 1.0,
> acceptable: RSS) of the information so that content can be delivered
> via subscription.

The document is very clear that the items in the feed can’t simply be
unstructured text, but have to be reusable data, e.g.:

> **Formula Block Grant Allocation Reports:** Agencies are asked to
> provide Formula Block Grant Allocation information as soon as it
> becomes available. Data elements for the formula block grant
> allocation feed should include:
>
>   Data Elements            Description                                                                                                                                                                                                            Field Type
>   ------------------------ ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -------------
>   Recipient Name           The name of the recipient of the award.                                                                                                                                                                                varchar(45)
>   Federal Funding Amount   Amount of federal government’s obligation or contingent liability, in dollars. A negative number represents a decrease in funding.                                                                                     int(11)
>   Recipient DUNS           Unique nine-digit number issued by Dun & Bradstreet to the agency. Followed by an optional DUNS Plus 4 which allows an agency to submit different bank account data for a single DUNS (Assigned by Dun & Bradstreet)   char(13)
>   *[…]*
>
And it goes on like this for several pages.

Pretty amazing to see a government so tech-savvy.

**Obligatory plug:** Want to see more like this? [Sign up to keep in
touch with the PCCC](http://boldprogressives.org/). We’re trying to get
better congresspeople elected thru Internet organizing and better tools.
