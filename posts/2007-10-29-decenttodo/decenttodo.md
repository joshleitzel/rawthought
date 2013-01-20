How to Build Decent Productivity Software
=========================================

October 29, 2007

[Original link](http://www.aaronsw.com/weblog/decenttodo)

* * * * *

These days it seems like everyone is making productivity software —
software that helps you manage all the the things you need to get done.
Yet all of them seem to be missing some basic pieces. A productivity
application has two jobs: remembering everything you need to do and
getting you to do it. The second is necessary because without it, you’ll
put all your tasks in the application and then never do them. The first
is necessary because otherwise the application will have no idea what to
tell you to do.

I think the ideal piece of productivity software would be like having a
great assistant or a campaign manager: someone who intimately knows all
aspects of your life’s todo lists and schedules and wasn’t afraid of
saying you had to wrap this meeting up because you promised the kids
you’d be home at 5 to take them to the game. Judged against this
standard, present productivity software is woefully lacking — it’s
usually not much more than a glorified todo list.

**Remembering everything:** Most software lets you store the classical
todo list items: call Jon back, finish report, buy toy for
kids.^[1](#fn:fn1)^ Some systems even branch out into vaguer life goal
stuff: spend time with family, become accomplished novelist, learn more
about history. But that’s about it.

But most people also have tasks in their project management software
(fix this bug), various calendar-style events (lunch with Jon, catch
plane), and a vast quantity of email (answer Jon’s question, fix the
frobnitz and report back to Bob, etc.) Yet no one seems to have dared to
integrate their software with a calendar, email client, or even bug
tracking software.

Since it’s unlikely anyone writing productivity software is also going
to write an email client, a calendar, and a bug tracker (although it
would be nice), I’ll settle for having support for plugins that import
tasks and events from these various other apps. It has to be very simple
to upload your whole life to your todo app.

**Getting you to do stuff:** The best I’ve seen is some kind of
filtering in which the software lets you only look at tasks that can be
done in 5 minutes while on a train. But if you’re the kind of person
who’s dysfunctional enough to need productivity software, simply having
a big list of tasks probably isn’t going to help you much. (I can write
a big list of tasks in Notepad.) Instead, the software should be
proactive about getting you to do stuff, like telling you to quit
goofing off and get ready for that big deadline you have tomorrow or to
hurry up and answer that urgent email from yesterday.

How does it do this? First, it needs to know what’s important. After you
import your life it should let you walk through and triage it all: look
at each one and decide how important it is (or whether it’s already
done). I’ve written a program to do this just for my mail and it’s been
invaluable — within a couple hours a morass of three thousand messages
turned into a neatly labeled set of piles ordered by importance.
Similarly, it can turn a tall pile of assorted todos into the beginnings
of an action plan.

Then comes the crucial part: it tells you what to do. I’m not demanding
anything fancy, like a robot dog that follows you around and barks
orders (although that might be nice). I’m just saying provide a little
pop-up window with a suggested next task. Psychologically, it’s easy to
ignore a long todo list. In fact, long todo lists are depressing and
make you want to look away. But a simple suggestion about one particular
thing to do next is much harder to dismiss.

Of course, the suggestions have to be good. The software would generate
them by taking into account everything it knows about your tasks and
calendar today. And if you still don’t like the suggestion, you tell the
program you can’t do it because…:

-   that’ll take too long (adds a time estimate to the task; used to
    make sure the task can be done before the next event on the
    calendar)
-   that’s not very important (adds a priority to the task; used to sort
    by importance)
-   I can’t do that here (adds a physical context to the task, like
    being in a certain place; used to find tasks you can do in your
    current context)
-   I can’t do that yet (adds a dependency; dependencies can then be
    checked occasionally to see if they’ve been finished yet)
-   I already did that (marks as done)
-   that’s not due for a while (adds a due date; used to make sure
    things get done before their deadlines)

and so on. Ideally, the system would be well-informed and smart enough
that you could trust its predictions. But even if it wasn’t perfect,
just suggesting tasks in order of priority would likely be a vast
improvement over the whimsical system used by most people in need of
productivity software. It’s hard to imagine such a tool wouldn’t be a
godsend.

*Aaron Swartz has too large of a todo list to write this program by
himself, but if you’re interested in working on it he’d love to help.
Email him at [me@aaronsw.com](mailto:me@aaronsw.com)*

(**Postscript:** Dearest readers, telling me that your favorite
glorified todo list has an API that allows me write all the importers I
want as well as write the task suggestion system I described is not an
answer. My point is that todo lists should *have* these features; not
that they should allow me to write them.)

* * * * *

1.  Most of the classical productivity guides are aimed at middle
    managers whose lives, as far as we can tell from the examples,
    consist of calling people, finishing reports, and placating their
    families. Who am I to break with tradition? [↩](#fnref:fn1)


