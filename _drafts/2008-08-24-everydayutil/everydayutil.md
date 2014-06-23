Everyday Utilitarianism: Who Gets the TV First?
===============================================

August 24, 2008

[Original link](http://www.aaronsw.com/weblog/everydayutil)

* * * * *

I’ve often thought it would be fun to write a book on “everyday
utilitarianism” — how to apply mathematical formalizations of
utilitarianism and game theory to help you solve everday life dilemmas,
like who should get to use the television first or whether you should go
out with that guy.

The basic idea would be that each chapter would revolve around a
particular mathematical principle and demonstrate it using a concrete
example from everyday life. Since I’ll probably never get around to
writing such a book, I figured I’d just write up such examples on my
blog when I encountered them and maybe someone else would take the idea
and run with it.

So here’s the first example:

It’s 8pm, and you settle down in front of the television to watch
*American Idol*. Unfortunately, at the very same time your roommate is
also settling down in front of the television to play one of his video
games. Quickly, the two of you get into a tiff about who will get to use
the television first. You both would prefer using the television first
rather than second, yet, since *American Idol* is a live show, watching
it now is a rather different experience from watching it later, while
the video game will remain the same all night. How can you prove
mathematically to your roommate that you should get to use the
television first?

Let U(TV\_0 = A), which we’ll write AT0, represent the number of
*utiles* (essentially, a measure of enjoyment) you get from watching the
TV first, while BT0 represents the number of utiles your roommate gets
from watching the TV first. (AT1 and BT1 represent the utiles from
watching it second.) Obviously our goal is to maximize the total number
of utiles (i.e. enjoyment) in the world, by picking the solution that
leads to our greatest number.

First we write down what we know. Obviously you both would prefer to
watch the show first, rather than second:

AT0 \> AT1\
 BT0 \> BT1

But since *Amereican Idol* is live, we can also say that the benefit you
get from watching it first is bigger than the benefit your roommate gets
from playing his game first. In other words:

AT0 - AT1 \> BT0 - BT1

Finally, we want to find out which is bigger: you going first and him
second, or you going second and him first. Let \>\< represent “which is
bigger?”

AT0 + BT1 \>\< AT1 + BT0

Now, to solve, we take what we know:

AT0 - AT1 \> BT0 - BT1

And we add AT1 to both sides:

AT0 \> BT0 - BT1 + AT1

And then add BT1 to both sides:

AT0 + BT1 \> BT0 + AT1

Which precisely answers are question above: it’s better for you to go
first.

By this time in the proof, however, your roommate should have wandered
off, leaving you to watch *American Idol* in peace. Unfortunately, not
having seen your proof, he thinks you’re just a selfish ass as opposed
to trying hard to do what’s best for the whole world.
