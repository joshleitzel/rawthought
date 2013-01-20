Bubble City: Chapter 5
======================

November 6, 2007

[Original link](http://www.aaronsw.com/weblog/bubblecity5)

* * * * *

Stare. Stare. Tick. Tick. Ancient art hung on the walls. Ancient books
lined the shelves. The light fixtures looked like they hadn’t been
dusted since Carter urged Americans to save electricity. “So, how are
things at the new offices?” a wisened-looking old man sitting at the
other end of the table asked. “Oh, fine, Grandpa,” Jason replied. “What
is it you guys do again? Videos of models doing backflips?” “No,” Jason
said with a sigh. “We’re a news site.” “You mean like the New York
Times?” “Kind of, except we don’t write the news, we just try to find
bits of it for you.” “How do you do that?” “Well, we look at everything
people on the Internet are reading and talking about and then we try to
pick out which of those people are most like you and tell you about the
stories they like at the moment.” “I see,” the old man said. “I see.”

“So how well does it work?” “Well, uh, not so great, actually. That’s
what I’ve been investigating lately.” “What do you mean?” “Well, it
seems like the site is recommending everyone the same inane stuff, like
stupid videos and that sort of thing.” “Ah, yes. Well, hate to say I
told you so, but this is just like that article i was reading in—what
was it? *Foreign Affairs*?—predicted.” “What do you mean?” “It said that
in the future we’d have this personal newspaper all you tech wizards
have been promising us, only it’d recommend us the same stupid crap
(pardon my language) that average people have been enjoying for
centuries.”

“Really?” Jason asked, suspicious. “Do you happen to have the article?”
“Oh yes, it’s right over—” the old man stood up to get it but then
remembered he had broken his knee, the ostensible reason for Jason’s
visit, and thought better of it. “It’s right over there—could you fetch
it for me?” “Oh, of course,” Jason said. He pulled it down and flipped
through it.

It was by the former editor of the New York Times and made the usual
viritolic case for trusting human editors over some algorithm based on
the whims of random people. And somehow it found a way to compare news
recommenders to street vomit, which Jason had to admit was a
depressingly common sight in San Francisco. Jason briefly wondered if
the old media was using the backdoor to prop up their dying business
models, but quickly decided nobody at those companies was clued-in
enough to know what a backdoor was.

“Yes, yes, I’ve heard all this, Grandfather, but I just don’t buy it.”
“Oh, what’s your explanation? Just need to improve the technology, eh?
Because I’ve heard that one more than a few times.” “No, I think someone
is trying to manipulate the results.” “What? Oh, god, you young people
are always jumping to conspiracy theories. Why can’t you just admit your
precious little system doesn’t work? Why do you have to create some
shadowy cabal of people trying to control the news.” Jason just sighed.
“Let’s talk about something else.”

“What’s your shirt say? Daring Fireball? What’s that?”

* * * * *

Wayne quickly found that, although Google didn’t want their name on the
check or the web site, they were most accommodating in other matters.
They gave him a nice little office inside the Googleplex, let him play
with all the fancy equipment and company perks (free laundry, free
swimming pool, free video games), and had a stream of people coming by
to chat him up and suggest new ideas for promoting NNA.

He was a bit wary of getting so close to someone he had so often railed
against, but he thought that perhaps this was his reward for his
ceaseless railing. Anyway, there were a lot of other evils out there to
fight, and if working with Google made him more effective at fighting
those, wasn’t it, on balance, a good thing? And the free food was nice
too.

* * * * *

On the plane back, Jason tried to figure out the meaning of the S-boxes.
He spent the first couple hours tracing the code, trying to understand
how it worked and how the S-boxes were used, before finally giving up in
frustration. It was just too complicated.

So, being a programmer, he decided to try a more automated approach.
First, he took NNA and replaced its random number generating system with
a function that always returned the number 17 (17 was a pretty random
number, right?). Then he made a copy in which the only thing he changed
was the S-boxes. He then wrote a program to generate random input files
for the recommender. It fed the same file to both recommenders — the
normal one and the one with the modified S-boxes — and it looked at the
output to see if there were any differences. Since he’d taken all the
randomness out of the algorithm, any difference in output had to be due
to the one thing that had changed: the S-boxes. In other words, the
program would search for inputs that triggered the S-boxes.

There was just one problem: there were a lot of possible inputs. For the
rest of the plane ride, his program tried thousands and thousands of
inputs, but none of them showed any difference. When the plane landed,
he slipped his laptop in his bag and let it keep crunching, but he knew
he’d have to try a different tack.

* * * * *

Wayne Darnus told everyone who would listen that he had invented NNA,
but as far as Jason could tell, he was using invented in the most
loosest of senses. Digging back through the changelog on the NNA source
code, which was provided for free to all from a project on SourceForge,
he found the code was originally written by some programmer at Yahoo,
back when Yahoo had real programmers. Getting a name was near impossible
— Yahoo had apparently insisted that all its programmers contribute
under the name “A Yahoo!” Some boneheaded corporate consistency policy,
no doubt.

But the author must have given up his identity *somewhere*. Then it hit
him: mailing lists. No programmer worth their salt could give up a good
mailing list flamewar. Whoever wrote NNA must have shown up on a mailing
list once or twice to defend it. Finding him would be easy: all Jason
had to do was read through ten or twenty thousand messages arguing about
the minutiae of NNA’s design principles.

After trawling through interminable debates in mailing list archives,
for what felt like days, Jason finally found a post from a man who’s
patronizingly knowledgeable tone unmistakably indicated that he was the
one who wrote it all. And the message was posted from home, so his
computer had no qualms about signing his name. There it was in black and
white, the man who had started it all: Dan Miller.

Dan Miller was a rather elusive party. He had no website or home page
and despite NNA’s incredible popularity, he’d apparently never been
interviewed by the press. (Wayne had been interviewed endlessly, of
course. Whenever someone neglected to include him in their history
books, he complained about their lack of commitment to historical
accuracy on his vlogcast.) Jason wasn’t too surprised, though. Finding
MIller hadn’t been easy, and he hadn’t known many journalists who were
willing to do much work to get a technology story.

Miller’s entry in the Yahoo corporate directory had long since gone
stale — he’d left years ago — and emails to his personal account bounced
with the message “Mailbox full.” — overflowing with spam, presumably.

He just couldn’t get a handle on this guy. So he called Eric. “Oh, yeah,
Miller. Wow, there’s a name I hadn’t heard in a long time. So you think
he might be your source into cracking this NNA thing?” “Seems like it’s
worth a shot,” Jason replied. “Yeah, I suppose it does. Alright, then,
well, I guess I’ll look this up for you. What are we searching for? OK,
here we go: Daniel Miller, last known employer Yahoo. Uhhh, OK, he lives
in Mill Valley, I’ll email you his address.” “Wow, Eric, that’s
incredible. Thanks so much.” “No trouble; it’s always nice to have an
excuse to use these skills.”

Marin County wasn’t exactly known for its comprehensive public transport
system, so Jason hopped a cab, which deposited him someplace random in
the middle of a hillside. He climbed around for a while looking for the
house he knew must be nestled in it somewhere, before finally locating
the place. He navigated his way to the entrance, then knocked politely
on the door.

He wondered how a software developer could live in a place like this —
isolated from the rest of the Valley, away from the buzz and excitement
of the industry. But then again, he wondered how a software developer
could live without having a website. Maybe Miller wasn’t much of a
software developer.

A man in a beard who looked to be about in his late fifties answered the
door. “Hello?” he said, apparently unaccustomed to receiving visitors.
“Dan Miller?” “Yup. “Hey there, I was looking into NNA’s source code and
I have a few questions. I know you probably hate to be bugged about
software you wrote over a decade ago, but I came all the way out here
and I’d really appreciate just a bit of your time to answer just a
question or two about NNA.”

Miller smiled knowingly and gave Jason a long, piercing gaze. “ah, yes,”
he said at last. “I’ve been expecting you.”

*Tomorrow:* [Chapter Six](http://aaronsw.com/weblog/bubblecity6)
