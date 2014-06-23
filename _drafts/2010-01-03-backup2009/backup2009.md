A Backup Solution?
==================

January 3, 2010

[Original link](http://www.aaronsw.com/weblog/backup2009)

* * * * *

For years I’ve wanted a backup solution that just works. ([Here’s a blog
post from 2006 asking for
it.](http://www.aaronsw.com/weblog/lazybackup)) The recent Coding Horror
disaster got me thinking that this year I should take another look.

There have been some great strides in backup software in recent years.
For Unix, there’s rdiff-backup , duplicity, brackup, and tarsnap. For
Macs, there’s Time Machine (which doesn’t support remote backups),
BackBlaze, Mozy, and Carbonite (which don’t do full-disk backups). None
of them seem to just work.

It seems amazing to me how bandwidth and disk drives have gotten huge in
recent years, while backup software has gotten more conservative and
efficiency-obsessed. If you want to make regular copies of your entire
disk, the best program is still old-fashioned `dump`, a program written
in the era of tape drives. All the state-of-the-art stuff is designed to
run on particular folders.

But then I found
[CrashPlan](http://b9.crashplan.com/consumer/index.html). For \$100, you
can back up all your machines to it as often as you like. The
installation process is super-simple, it runs in the background without
killing your net connection (BackBlaze would always slow my machine and
my network down), and it works on Macs as well as Unix. It even makes it
easy to control remote headless servers — just open an SSH tunnel to the
machine you want to configure and you can use your local client to
configure the remote machine.

The only trouble is that it [doesn’t support bare-metal
restores](https://crashplan.zendesk.com/forums/30387/entries/29297) or
[xattr](http://support.crashplan.com/doku.php/articles/supported_metadata).
I don’t understand why and hope that’ll be fixed.

Does anyone know of a better solution?

**Update:** Everyone hates Mozy. [SpiderOak](https://spideroak.com/)
seems interesting, but is even less designed for full-disk backup.
