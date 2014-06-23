Bubble City: Chapter 6
======================

November 8, 2007

[Original link](http://www.aaronsw.com/weblog/bubblecity6)

* * * * *

Miller ushered him into a clean, but ancient, little house with leather
sofas and bright windows. “Take a seat,” he said. “Can I get you
anything?” “Uh, no thanks,” Jason said, a bit surprised at this
reception. “OK, I’m gonna fix myself a drink,” Miller said, heading into
the kitchen.

“You know,” he said in between noises of liquids mixing and ice
crunching, “I always knew someday someone would call me to account. I’m
actually kind of surprised it took so long.” He returned and grabbed a
chair across from Jason. “Alright, so let’s do this: I think you have
something you want to ask me.”

Caught a bit off-guard by all the frankness—and the prescience—Jason
began by stuttering. “Well, uh, I was looking through the NNA code and,
as I’m sure you know, well, I mean obviously you know, there’s this
section in there that’s just a series of numbers. S-boxes, you might
call them.” Miller laughed. “Anyway, it appears to me that the S-boxes
only affect the results under fairly unusual circumstances — that they
seem to be a kind of backdoor allowing someone to remotely control the
output of NNA.”

“So you haven’t found the key yet?” “No, not yet. That code is
impenetrable!” Miller laughed. “I was hoping you might be able to shed
some light.” “Come on, now. I’m sure you’re nice, but I’m not about to
give out the backdoor to NNA to any pretty young thing that happens to
come out here and knock on my door. Anyway, even if I wanted to, I
couldn’t. Yahoo insisted on wiping all my drives after I left the
company. I don’t have the key anymore.”

“But surely you can reconstruct it? I mean, the code is open source —
you can see the backdoor right there.” “Yes, but it was a sort of public
key-style system. What’s in the code is just the public part; anyone can
read that. But it was generated from the private key — the series of
patterns that will trigger it. Basically, what you see in those S-boxes
is just the hash of the private key and it only kicks in if the hash of
a voting cluster matches.”

“So why’d you do it? For fun?” “Of course not. I knew it was wrong. I
wasn’t gonna pull another Dennis Ritchie. I was ordered to. The folks at
Yahoo insisted that if we were going to open source this engine they had
to have a way of clearing out illegal and offensive stories; otherwise
it’d tarnish their good name. Of course, that department disappeared in
a reorg shortly after the software’s release and I disappeared along
with it, so I suppose it’s all kind of irrelevant now, except as a
historical curiosity.”

“Historical curiosity?” Jason shouted, before realizing how loud he was
being. “It’s a major security vulnerability in a key piece of
infrastructure! Do you have any idea how bad this is?” “Yeah, yeah, I
suppose technically it is,” Miller said, “but let’s be realistic here.
My copy of the key was wiped, everyone at Yahoo who knew about the
project is long gone, and there weren’t many of them to begin with. It’s
a dead letter.”

“You don’t understand,” Jason said. “Someone’s using it. I don’t know
whether they were at Yahoo or whether they got it from someone or
whether they figured it out, but it’s getting used. There are anomalies
in the recommendations that just can’t be explained any other way.” “Oh
god. What are they doing with it?” “Well, it’s difficult to tell without
cracking the key. The big piece I’ve been able to spot so far is that
they’re getting inane videos recommended to everyone. But who knows what
else they’re doing.”

“Well, you do. Just change the S-boxes and see what recommendations
change.” “Ah, you’re right! I just need to feed it the live input! If I
give that to two versions with no randomness and different S-boxes, the
difference will have to be exactly the orders from the backdoor. And oh
god, and that’ll tell me what the key is: I just remove all the pieces
of the input that don’t affect the difference and whatever’s left must
be what triggers the backdoor. That’s brilliant! I just need to get my
hands on a copy of the live database and some computers. Wow, thanks so
much.” “Glad to help.”

“So you’ll come forward? Tell the world about the security hole you put
in so we can force people to take it out?” Miller laughed. “Not a
chance.” “But I thought you said — you said you were against it.” “I am,
but look around. See this house? This couch? This cozy little place in
the woods. I got to retire early on my Yahoo stock options. And I got
those by signing some pretty iron-clad non-disclosure agreements. I talk
about any of this in public and I spend the rest of my life in court,
watching all of this get taken away. Sorry, kid, but you’re on your own
on this one.”

“But, but,” Jason said. “Don’t you see how important this is? The
integrity of the world’s news is at stake!” “And you seem like just the
one to save it,” Miller said. “In fact, it seems like you already have
your solution all figured out. All I can really say is best of luck to
you.”

“But, but,” Jason said, exasperated. “Well, the very least you can do is
walk me through the code.” Miller just laughed. “That code’s gotten so
crusty since the last time I touched it. I don’t think there’s a person
on Earth who really understands it anymore. I guess that’s why no one
else has caught the S-boxes. Everyone knows better than to go near that
thing.”

“Anyway, unless you have anything else, I’ve got a game of Starcraft
that I really should be getting back to,” Miller said. “Uh, I guess not.
Thanks for talking to me about it, I guess.” “Oh, of course. Sorry I
couldn’t be more help. But good luck, kid. You’ll need it.” And with
that Miller showed him the door. And Jason found himself standing alone
in the middle of a hillside, wondering how a kid like him was going to
save the news.

* * * * *

When he got back, he quietly made a dump of the Newsflip database and
rejiggered his program to try to dissect the live DB instead of
generating random ones. He quickly saw much better results. Within hours
it had pared things down to just a couple hundred thousand
possibilities.

While he was waiting, he pored over the diffs he’d generated as Miller
had suggested: the changes that the backdoor had made to people’s
recommendations. The first thing he noticed was that just about everyone
was seeing crummy stories: the video of the dog peeing, news about dumb
celebrities, that sort of thing. Meanwhile, real news — like the attack
on Iran — was completely buried. Only a small handful ever saw it.

Jason was shocked. The American people weren’t being dumb — obsessed
with celebrity over politics, with bodily fluids over intellectualism.
That’s just what they were being fed. And there was someone out there
making sure of that.

Jason was bubbling mad — and his anger only increased as he watched the
elements tick away on his little script to search for the backdoor —
each tick making his blood boil higher. And as it was almost done, the
phone rang. It was Sarah.

“Hey kiddo,” she sang. “Caught you playin’ hooky at the office? What’s
up?” she asked. “Oh, not much,” Jason lied. “Just thought I’d work from
home today.” “Oh yeah, I get sick of those slobs too. Hey, want to come
over to my place and keep me company?” “Uh, well,” Jason started. “Oh,
don’t worry. I’ve got wifi and everything — you can work from here just
fine. I promise I won’t distract you… too much.”

Jason knew he should stay at home and finish what he’d started, but a
tingle of excitement ran through his body, telling him he really ought
to see Sarah. “OK, how about I come over there in twenty minutes?”
“Sounds good,” she said, and gave him her address. “See you soon!” “See
you,” he said, and hung up.

By then the computer had cracked the code and he went over to see what
was what. It was, as predicted, a bunch of bookmarks, but in some weird
series that Jason couldn’t quite follow. He tried reproducing it by
creating some dummy accounts of his own, but before he could really
puzzle things out he realized that he’d promised Sarah he’d be there ten
minutes ago and dropped what he was working on to run for the door.

* * * * *

Deep inside the Googleplex, behind a set of keycard-locked doors, behind
another set that required keys for entry, behind another set that
clearly read “NO VISITORS BEYOND THIS POINT”, lay a series of employees
that, except for the slightly-heightened security, seemed like all the
others.

Tom was going through his daily rounds of checking on the recommender
results when he noticed a certain story was being recommended to him
twice. The recommender was programmed to only recommend the same story
to someone only once, so that never happened — unless one of his
teammates screwed up. “Hey Kevin, get over here. You fucked up again.” A
miffed-looking British fellow headed over to Tom’s desk. “What are you
talking about?”

“You fucked up — I’m seeing this dog story getting recommended twice.”
“But how can that be?” Kevin asked. “I put in safeguards to make sure
that never happened again. Unreal. Are you sure it’s not on your end?”
“Of course it’s not on my end — I’m looking at the raw recommendation
output.” “Alright, alright, well trace it back. See which posts are
conflicting.” “OK, give me a second. Here, grab a chair.”

“Whoa, this is weird,” Tom said. “I don’t recognize any of these
accounts. Do you?” “Numbered account names? We’d never be so blatant.
Fuck. You know what this means, right?” “We have an incompetent intern?”
“No, moron, it means someone’s onto us. They’ve figured out the back
door and they’re testing it for themselves.” “Oh shit. Shit, shit, shit.
What do we do?” “What can we do? We gotta talk to Saul.”

They headed over to a slightly larger cubicle hidden in a corner. “Saul,
we’ve got a situation here.” “Situation?” Saul asked. “What is this?
Some kind of spy movie? What’re you talking about?” “Someone else has
found the backdoor. We spotted a bunch of bookmarks in the same pattern
as we’re using from a different set of accounts.” “Fuck. OK, well,
thanks for telling me.

“Here’s what I want you to do. You’re going to walk calmly back to your
desks. You’re going to write up everything you’ve learned so far and
place it on this Flash drive.” He removed a small USB keyfob from inside
his desk. You’re then going to give me the keyfob, wipe everything
related from your machines, and pretend this never ever happened, you
understand? This is out of your hands now. I’m going to make sure this
gets… taken care of.” Tom and Kevin’s eyes widened. “Wait,” Tom said,
“you don’t mean…” “Exactly,” Saul replied. “This is a job for… public
relations.”

*Tomorrow:* [Chapter Seven](http://aaronsw.com/weblog/bubblecity7)
