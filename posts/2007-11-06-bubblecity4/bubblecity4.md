Bubble City: Chapter 4
======================

November 6, 2007

[Original link](http://www.aaronsw.com/weblog/bubblecity4)

* * * * *

“How’s it going, kiddo?” They’d already gotten to kiddo? Jason tried to
blend in with his chair. “Helllo, kiddo? You in there?” Trent slapped
him on the back of the head. Jason felt a sharp pain and decided to give
up on the ruse. “Uh, yes, sir. Or at least I have been for the past
couple decades.” “Ahh, a kidder. Love that.”

“Anyway, just wanted to check in, see how you were doing, all that good
boss stuff, you know?” “Ah, of course, sir. Everything’s going great.
The, uh, other team members”—he looked at Sarah—“have been really
helpful and, uh, yeah, just everything is going really well, I guess.”
“Glad to hear it,” Trent said.

“You know,” Trent said, before pausing a moment to look around Jason’s
desk, “uh, Jason, that Newsflip isn’t just another one of those startups
out to make a quick buck. We have a noble mission. For decades, people
have gotten their news from a handful of conglomerates who’ve bought
each other up so many times that they can’t tell their CEO from their HR
department. And news is important. Without the news, you wouldn’t have
any idea who won the latest sports game or why we’re invading Iran.”
“We’re invading Iran again?” Jason asked. “Anyway, I just want you to
know that this is a company that makes a difference.” “I see, so we’re a
company that’s out for a quick buck while thinking we’re helping the
world.” “Exactly,” Trent said. “Anyway, I’ve got another dozen meetings,
so I better head off, but just give me a ring if you need me.” “Of
course,” Jason said.

Jason went back to his screen and decided to actually read through
Newsflip to see this great new democratizing force, telling people about
the reasons we were invading Iran. The top 5? “Waking Up During
Surgery”, “It’s Official: Tom Cruise Has Sucked the Life out of Katie
Holmes”, “Excited Pug Pees on Cameraman”, “5 Stupid Things You Said to
Her”, and “Can Medical Marijuana Cost You Your Kid?” Jason sighed.

Jason thought of himself as a rather sophisticated person, but
Newsflip’s recommender certainly didn’t seem to think so. He wondered
how many other people got the same sort of treatment. So he opened up a
raw connection to the database and did a query. Tens of thousands of
people were seeing the story about dogs peeing. Odd, he thought.

He needed someone to bounce things off of, so he called the best person
he knew for that sort of thing: Eric. Eric was brilliant. In the first
bubble, he’d made millions as a teenager who’d managed to persuade some
VCs to let him run a web news company. But the experience had burned him
out badly and now he mostly slunk around his apartment in San Francisco
and watched TV. Still, he knew this stuff better than anyone. Jason gave
him a call.

“Hey, Eric, you got a moment?” “Yeah, not like I’m doing anything else.”
“You ever read Newsflip?” “Look, Jason, I love you and all, but I’m not
going to start using some website just because you work there. The news
is a complete waste of ti—” “Yeah, yeah, I know. I read your blog,
dude.” “Really? I didn’t think anyone did.” “Oh, geez, you’re the
top—anyway, can you just go there for a minute and point it at your
del.icio.us page to generate some recommendations.” “Yeah, uh, OK.”
Jason heard some sounds of typing and sighing thru the phone. “Alright,
here we go: 25 stories. Yeah, this stuff is total crap. Dogs peeing on
people and that sort of thing.”

OK, now Jason was suspicious. Eric was just about the last person on
Earth who ought to be recommended that story. “God, Jason. What do you
train this thing with? It’s *terrible*. What the hell algorithm is it
running anyway?” “That’s what I’m trying to figure out. Mind if I swing
by your place?” “Not really; you might, though.” “See you in fifteen.”

Jason packed up his laptop, ran down the stairs, and biked over to
Eric’s apartment in the Western Addition. Eric answered the door almost
before Jason had knocked. Inside was a den of total filth: clothes
strewn everywhere, pizza boxes piled high, no outside light coming in,
and little inside light turned on. Jason hugged the wall to make sure he
didn’t run into anything. “Take a seat on the couch,” Eric said,
gesturing to a pile of crap in the corner. Jason tried to dig through it
to clear a space big enough for his butt.

“OK, so I’ve got the code on here that generates this stuff. Mind
looking thru it on here with me?” “Yeah, why not?” Eric said, clearing
off a similar space for himself. “Maybe it’s a bug in the renderer; it’s
rendering the same recommendations for everyone.” “Nah, can’t be — the
recommendations are actually in the database. They’re definitely getting
spit out by the recommender.”

“Well, is the recommender just generating the same stuff for everyone?”
“Nah, can’t be. People would have noticed that.” “People are more alike
than you’d expect. Check.” So Jason ran a few queries to see. “Nope,
there’s definitely variance in what people are getting recommended.”

“Hmm,” Eric said. “Well, maybe the recommender you’re using just sucks.”
“No way,” Jason said. “We’re using NNA. It’s state of the art. All the
big guys use it — Google News, Yahoo, even the new NYTimes redesign.”
Eric laughed. “State of the art? That piece of cruft hasn’t been touched
since the Bad Old Days. Isn’t there some new thing everyone is switching
to?” “I don’t know; you obviously follow this stuff more than I do.”

“So why don’t you just upgrade it to the new stuff.” “Yeah, I guess
that’s a good idea. I’ll talk to the guys,” he said. “Oh wait — I just
remembered. We tried that and Wayne Darnis threw this total shitstorm.
You should have seen the place — it was crazy. No way they’re doing that
again.”

“Well, let’s open up NNA and take a look at it,” Eric suggested. “I’m
sure it’s a morass, but I can’t think of anything else to do.” “Fine,”
said Jason, pulling it up. Eric was right. They scrolled through it, but
couldn’t make heads or tails of it. Things had been patched and
repatched so many times that it might as well have been written in
INTERCAL. But Jason scrolled thru it as best he can, trying to see if he
could see something.

“Wait!” Eric shouted. “Go back. What the hell is that?” Eric pointed to
a block of numbers on the screen, sticking out from the rest of the
program like a sore thumb. “I dunno, I assumed it was just some
constants,” Jason said defensively. “Who the hell has a page of one-byte
constants in the middle of their program?”

Eric looked closer. “Oh my god, these aren’t constants. These are
S-boxes!” “Huh?” Jason said. “S-boxes! You never heard about those?”
“No,” Jason said, again annoyed at Eric’s habit of assuming everyone had
his encyclopedic knowledge for odd details. “Back in the bad old days of
encryption, IBM or someone came up with this algorithm called DES — Data
Encryption Standard.

“NIST, the government standards body, ratified it and it went on to be
the standard encryption algorithm used in banks and computers and all
that stuff. But right before the government ratified it, they sent it to
the NSA — you know, the spy organization that hires up all the top math
students to break encryption algorithms so they can better tap
everyone’s phones — for final approval.

“The NSA said they liked it but they just had one little change. And
they fiddled with these things called the S-boxes — big lists of numbers
that your message was run through as it was encrypted. The NSA claimed
they just were helping make sure the S-boxes were as secure as possible,
but they never explained how or why they picked the numbers they did.
So, although it’s never been proven, a lot of people assume the S-boxes
are the NSA’s backdoor into the private conversations of DES users —
that there’s something about the S-boxes that makes it easy for them to
decrypt people’s messages.”

“What are you saying, Eric? That someone put a backdoor into NNA?” “Hey,
I’m not saying anything. I mean, I’m sure there were perfectly good
reasons that DES needed S-boxes; it’s just that the NSA got to choose
them that was suspicious. Maybe the same thing is true with NNA; maybe
there’s some good reason it needs S-boxes, although nothing springs to
mind.”

“But how would a backdoor in this program even work? It doesn’t talk to
the network; it just gets stories in and pushes recommendations out. Am
I supposed to believe that buried within these numbers are some secret
rules to always elevate stories about dogs peeing?”

“No, of course not,” Eric said. “Think about it: it’s the perfect
system. The recommender doesn’t talk to the network itself, of course,
but it gets fed tons of data from crawlers which, all the time, are
scouring the Net for various pages and dumping some facts about them
into the recommender. The recommender could just keep an eye out for
page patterns which match the S-boxes and use those as its
instructions.”

“God, you’re right! That’s brilliant. And it would be almost impossible
to trace, because any one of a million pages on the Web could have set
it off.” “Precisely,” Eric said. “So you’re saying some guy out has a
series of pages that encode secret orders, telling all the world’s news
sites to feature stories about dogs peeing?” “No, no, no, not at all.
That would be irresponsible. I’m just saying it’s possible.” Eric
paused. “Anyway,” he continued, “if he was smart it wouldn’t be a series
of pages — that’s too traceable. He’d just use Tor or some sort of
anonymizing proxy to send the messages by voting through some dummy
account on del.icio.us or something like that. It’d be impossible to
trace.”

“This is all just speculation, of course. We have no more evidence of it
than a bunch of funny numbers in a poorly-written computer program,”
Eric quickly added. “Yes, but it’s so perfect—so devilishly clever. Hey,
hang on a minute. My phone’s ringing.” Jason didn’t realize how
oppressive Eric’s apartment was until he left the heavy putrid air to
answer the phone outside. “Hello?” he said. “Jason, you need to come
home,” said the man on the other end of the line.

*Tomorrow:* [Chapter Five](http://aaronsw.com/weblog/bubblecity5)
