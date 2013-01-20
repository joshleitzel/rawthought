Google Voice Security Flaw
==========================

August 25, 2009

[Original link](http://www.aaronsw.com/weblog/gvoiceflaw)

* * * * *

Google Voice allows you to get a new telephone number (a “Google Voice
number”) and when people dial that number, Google will patch the call
through to your various other phones. That way you can give people one
phone number and it will ring your home phone, your cell phone, your
work phone. (Apparently this is a service for people who still have home
and work phones.)

It now requires new phones to go through a verification process to be
added to that list, but I believe that phones that were added back when
Google Voice was GrandCentral (Google bought it) are carried over and
never required verification.

You can also create rules for which phones ring. I set mine up so that
if the callbox at our apartment calls the Google Voice number (i.e.
someone is trying to get into the apartment), it rings both me and my
roommate. Otherwise it just rings me.

Now here’s the odd thing: when my roommate texts someone with a Google
Voice number (or vice versa), their SMS chats show up in *my* Google
Voice account. It took me a long time to figure out what was going on —
at first it just looked like other people’s SMS chats were just
appearing in my inbox. But it now seems clear that Google Voice looks at
the phone number of incoming SMSes and, if it’s attached to an account,
stores the SMSes in that account.

I suppose one should trust their roommate, but I think people should be
aware of this issue nonetheless.
