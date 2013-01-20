Why I Won’t Use Rimuhosting
===========================

August 27, 2009

[Original link](http://www.aaronsw.com/weblog/rimuhosting)

* * * * *

I originally got a VPS at Rimuhosting because their website lauded their
“fanatical service” and a friend had concurred. In September 2006, I
ordered my first server.

In December, a friend asked if I knew any good VPS hosts. I said I used
Rimuhosting and hadn’t had any problems. “That’s funny,” he replied.
“rimuhosting is the company that’s just given me horrible support over
the last 2 weeks. No answers to email for 2+ days, then a claim that
they didn’t receive it, then I send them the mail server log that says
they should have received it, then they say ‘oh, that’s interesting. oh
well.’”

I guess that should have been a sign for me. But instead, he changed his
tune: “Well, if everyone thinks they’re so great, maybe I’ll give them
another chance.”

The server went down for maintenance three times and was moved to a new
IP once. In April 2008, the real trouble started. I was dinged for
bandwidth overruns, apparently because Yahoo! was crawling the same
files on my server hundreds of times a day. In June, they complained I
was monopolizing the CPU, even though when I logged in the machine was
100% idle. They complained again in October and November and December
and offered to take a look at the problem if I gave them root on the
box. “Over my dead body,” I thought.

In December they set a CPU cap on my VPS. Then came the amazing bit.
Despite already having sold me a VPS and put a CPU cap on my usage of
it, they manually edited my partition to add their SSH key to my
`authorized_keys`, used that to **gain root on my box**, noticed that a
CGI script was using up CPU, and responded by **turning off Apache**.
They didn’t even try to call me to talk about it in advance. They didn’t
even call me at all. They just sent a little email. After the fact. The
subject? “index.cgi is causing high CPU usage”

I asked them what was going on. Here was their reply:

> In our welcome email we do mention that we have installed our key on
> your server.
>
> We use that to help our customers. You are able to remove that if you
> are not comfortable with that.

Of course, I did remove it. They used their control of the hardware to
add it back in.

> We work to ensure that customer’s get a fair share of the CPU, and
> that their servers perform well.
>
> If everyone is trying to max out the CPU then everyone’s performance
> will be poor. We can set it so that you get a fixed amount of CPU (and
> then we don’t mind how much CPU want to use). Or we can let your CPU
> burst up to 100% of a host server CPU core, in which case your server
> will run fast, but in which case we’d need to make sure you do not
> monopolize the CPU.

Or, they can break into my box and turn off my webserver. Oddly they
don’t mention that last option.

> If you think we can help in any other way, e.g. investigating that
> script or anything, just let us know.

I suppose this is the service Rimuhosting is known for. I won’t be
taking advantage of it again.
