In Defense of Anonymity
=======================

October 24, 2008

[Original link](http://www.aaronsw.com/weblog/tor2web)

* * * * *

In 1787, when America’s framers wanted to argue for its Constitution,
they published their arguments (the Federalist Papers) anonymously.
Whistleblowers have released everything from the Pentagon Papers to the
Downing Street Memos. Anonymous speech is a First Amendment right.

And yet, on the supposedly Wild West frontier of the Internet,
publishing anonymously is not so easy. Hosting providers require a name
and credit card, which they have to hand over to the FBi at the drop of
a National Security Letter. Free hosting sites zealously obey takedown
requests and require publishers to reveal their identity if they want
their stuff put back up (a tactic Scientologists have used). Luckily
there are now services like [Wikileaks](http://wikileaks.org/), but they
only publish a very narrow range of content.

But, talking with Virgil Griffith and others, I hit upon a new way of
allowing for anonymous publishing. The amazing [Tor
project](http://www.torproject.org/) lets you use the Internet
anonymously, by disguising your traffic thru a long series of relays.
Less well-known is that it also allows for anonymous publishing, by
running the system in reverse. Unfortunately, you need the Tor software
to visit anonymously-published sites, but we realized there’s no reason
this need be so.

So I dusted off some work I’d begun years and years ago and build a
tor2web proxy. Now anyone with a web browser can visit an anonymous Tor
URL like
[http://sexy36iscapohm7b.onion/](http://sexy36iscapohm7b.onion/) from
any Web browser, without any special software, just by going to:

[http://sexy36iscapohm7b.tor.theinfo.org/](http://sexy36iscapohm7b.tor.theinfo.org/)

Which means that publishing an anonymous website is now also fairly
easy. ([There are instructions on the Tor
site](https://www.torproject.org/docs/tor-hidden-service.html.en) — just
replace the `.onion` when you hand out the URL. If that’s too tricky,
you could use an existing provider like [Freedom
Hosting](http://xqz3u5drneuzhaeo.tor.theinfo.org/).)

tor2web proxies act like any other sort of proxy or router; they just
route traffic from a client to a server and don’t get involved
themselves, so they can’t be held legally responsible for the content
that passes thru them. But to prevent against a single point of failure,
I’m asking others [to set up tor2web
nodes](http://tor.theinfo.org/config) to distribute the load. The next
step, of course, [is to support
mirroring](http://tor.theinfo.org/mirror) so that people can still find
interesting files, even if one hidden server goes down.

Here’s to anonymity — and more tools protecting it.
