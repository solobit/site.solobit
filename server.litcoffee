# Advanced Server Cluster Manager for Node.js

##### A little literate [CoffeeScript][CS] and [GitHub Flavored Markdown][GFM] adventure

_99% of the work a programmer/designer does is made up of thought, the rest is code_

The 'entire' source code of this project can be found by following:
https://raw.github.com/solobit/site.solobit/site/clusters/README.md

__NOTE:__ This is candidate for a own repository, not just themed branch.

This part is used to demonstrate my profession as literate coder for long-term
sustainable development through architecture documentation, collaboration and
innovation. I also provide translation services from technical Dutch to English
and vice-versa.

[CS]: <http://coffeescript.org>

<small>a original work by Supersymmetry</small>

<!-- A quick index always goes well in large and often referenced documents -->

__Skip to go to:__ [Installation Instructions][01] | [Configuration][02] |
[Style Guide][03] | [ToDo list][04]

__Subjects:__ [Software Architecture]() | [Programming Paradigms]() | [Patterns]()

[01]: #installation
[02]: #configuration
[03]: #styles
[04]: #todos

## ToDos

<!-- I break my convention here for illustrative purposes. To avoid first glance
star `*` first character on new line equals summarized, unordered list, we use
the single or double underscore symbols to render fat or italic texts. This is
just to show it still works. -->

**Additional stuff to do:**

*Note: lists can be turned into Task Lists which allow for `- [x]` to check-off
items from the list. This feature is enabled _for Issue and Pull Request
descriptions and comments only_.*

<!-- Note: these para's take about half my GitHub view width now atm
anything neutral gets a *, pos gets + and minus - is for negatives -->

* Do some reflection on this file for further fine-grained management
* Auto-require module imports etc.
* Isomorphic and HTML5 contenteditable tips and trics
* Self-scan to bridge `h1` to `h6` and the Markdown HTML identifier gap
* Include isomorphic client/server view logic seperation (some just really is...)
* Extract files and code snippets (if long enough?) from this one (1) file
* Make from this 1 file a bunch of directories and files? Based on rules?
* Be able to pass variables/constant values from outside the code blocks inside


## References and original work

The idea is to further expand this program/file/document for future direction,
even further into the `contenteditable` HTML5 element, cross-platform isomorphic
(Node.js) application direction much like the earlier great works such as
[Smooth CoffeeScript][SCS]

This experimental publication was largely and heavily inspired by:

* [Ruben Vermeersch][SBE]
* [Literate CoffeeScript (LCS)][LCS] by jashkenas / revence27
* [GitHub Flavored Markdown][GFM]
* [Systemd for Administrators][0PT]
* [Arch Linux][ARC] for the user-centric approach
* and of course the famous [Dr. Donald Knuth][LIT] who first coined this idea

You can read more about the [motivation or rationale](<#rationale>) behind this
project and why I find it relevant for consideration.

<!-- These blocks should follow any subsection with many hyperlinks / references
for clearer overview and easily link maintenance -->

[LIT]: <http://www.literateprogramming.com/>
[GFM]: <https://help.github.com/articles/github-flavored-markdown>
[LCS]: <https://github.com/jashkenas/coffee-script/issues/1786>
[SBE]: <http://savanne.be/articles/deploying-node-js-with-systemd/>
[0PT]: <http://0pointer.de/blog/projects/systemd-for-admins-3.html>
[ARC]: <https://wiki.archlinux.org/index.php/The_Arch_Way>
[TMB]: <https://github.com/jashkenas/coffee-script-tmbundle>
[SE2]: <http://www.sublimetext.com/2>
[SCS]: <http://autotelicum.github.com/Smooth-CoffeeScript/interactive/interactive-coffeescript.html>

## Trade-off: drawbacks and gains

There are a few advantages and drawbacks that come with choosing this
programming style for usage in (early/parts) of your project.

We assume this program/document is moderated/maintained just as much as it
requires. On a deeper level, that might mean fixing backwards incompatible
things from either Node.js, NPM, Node-Gyp or Modules, Packages or CoffeeScript
or broken links and such. It's impossible to plan for the future paths that a
handful open-source projects, how conservative they might be, actually choose.
No one owns a magic eightball for that.

### Con's

- Loss of more complex and powerful capabilities of HTML documents through use
of a limited subset of that markup language and possibly limited usage of true
HTML inline markdown escaped because any outlet (site like GitHub) might prevent
the use of those HTML elements through it's own allowed subsets and script
filtering against cross-server scripting hacks.

- Increased complexity through mixing up several independent languages in 1
file.

- Risk of over-documenting items.

- GFM and regular Markdown 4-space indention for quotes becomes unavailable due
to rendering of the coffeescript compiler to code. So if that would come first,
unmodified, it would 99% certain choke on that being text (from your quote
intended as just that, text not coffeescript).

- Not much work/advancement has been made in this field so examples might be
scarce although, this also goes certainly for parts of any new technology like
CoffeeScript.

- Limited available markup and styles due to focus being on textual pieces of
content in the form of 'comments' although, contrary to other programming styles
the value is _right inside the comments_ and the code is actually the least part
of this file.

### Pro's

In return however, we also gain a few advantages by taking this road. Also some
of these items are mentioned because they may (partially or fully) mitigate a
before mentioned drawback of this approach making it perhaps somewhat neutral.

+ Architecture written out from the start, point T-0 if done correctly.




## Rationale

This document is probably under constant moderation. GitHub history of commits
should make a nice timeline and practical code archive for me to feel confident
the legacy of this programming style is kept forever. In fact, it's largely what
the (Arch inspired) idea of `user-centric` coding is about.

For the most part, this section will describe those elements of our program that
deal with matters of 'philosophy' behind the creation of this work.

Obviously, we will have the obligation to open with the father of this paradigm:
Dr. Donald Knuth. To quote him is probably the best reference we can find to see
if we can approach his ideas as closely as possible.

### Literate programming

> I believe that the time is ripe for significantly better documentation of
programs, and that we can best achieve this by considering programs to be works
of literature. Hence, my title: "Literate Programming."

Lateron, Dr. Knuth challenges us to change our whole attitude around programming
and development (typically one being with little consideration for other people
that need to read your code). Most code projects have source code that is
documented 'poorly' at best, very rarely you might find this done in a 'ok'
fashion, usually because a community developer/user has taken time long after
the project was finished/stable and added some clarity where needed or added
tags for a tool like JSDoc to generate API documentation etc. Much more, I see a
future for this style/paradigm to be in the earliest stages possible, when
thinking about the design and now, we can even blog and write executable code at
the same time.

> Let us change our traditional attitude to the construction of programs: Instead
of imagining that our main task is to instruct a computer what to do, let us
concentrate rather on explaining to human beings what we want a computer to do.

Keep in mind, this entire process and the literate style I try to advocate, is
solely here to prevent problems that any ancient/legacy software has: loss of
knowledge over time, increased costs exponential with obscurity of the code.
Because its so damn expensive to find and hire one who can actually do the
'black magic' it might one day become (although I doubt this will ever become
part of some kernel.

Of course, Dr. Knuth had that in mind as well but it goes deeper.

> The practitioner of literate programming can be regarded as an essayist, whose
main concern is with exposition and excellence of style. Such an author, with
thesaurus in hand, chooses the names of variables carefully and explains what
each variable means. He or she strives for a program that is comprehensible
because its concepts have been introduced in an order that is best for human
understanding, using a mixture of formal and informal methods that reinforce
each other.

We can easily conclude that `in an order that is best for human understanding`
is the key part of the sentence here - it's our goal to have people (better
appearantly) understand code. One way of doing so, is to pay attention to the
naming of variables (but there are more pointers).

The cool thing is that our managers might actually start grasping this stuff so
we don't have to chew out every little thing for their unknowning behinds.

Now another great inspiration and source of joy for me, is Arch Linux. Its been
my gateway drug into the UNIX philosophy and has some nice principles that I
find to be true here as well.

From [The Arch Way](https://wiki.archlinux.org/index.php/The_Arch_Way) we learn:

### Simplicity

> Simplicity is the ultimate sophistication. — Leonardo da Vinci

Let's reword something found in The Arch Way texts to better fit our ideas in
the context of a single app, not operating system.

> Simplicity itself has many definitions. We define simplicity as without
unnecessary additions, modifications, or complications, and provides a
lightweight coded, yet heavily commented CoffeeScript base structure that allows
an individual user to shape the system according to their own needs. In short:
an elegant, minimalist approach.

In practice, this means that I did not rely on any potentially 'exotic' packages
that is unless, you are the type of person that would label anything not
'official' or 'standard' (as far as that goes) like Markdown or ECMAScript, such
as CoffeeScript or GFM to be obscure.

So simplicity only goes as far as your personal perspective on the term 'simple'
- as said it's highly subjective - but early on I did realize some important
short-commings with many software packages I used, I really can abstract things
in a high-speed fashion and in the longer term the patterns I see become more
'natural' so even anything remotely 'standardized' (and probably not elegant but
more 'complete') would still feel like a short-comming; a negative trade-off for
using a (sub)set of languages, syntax or convention, style or rule and what not.

One example of type of 'problems' faced when tracing them to their root sources,
was the inability to do much near-complex things in Regular Markdown. Luckily
this bad side-effect was negated partially through the popularity and user-base
of GitHub and their use of GFM through-out the site. This made it a lot easier
to choose this form of Markdown as the one I wanted to use (a) because of the
familiarity and (b) due to the automatic syntax highlighting in many popular
programming languages. That makes it a better choice over any other online
Markdown rendering sites and as close to 'standard' I like to come with Markdown
at the moment for my own comfort.




## Setup

This is a self-documented, slightly opinionated, literate coffeescript file. It
is executable using a standard coffee-script installation. The Markdown in this
file can be best experienced as part of GitHub since it uses some additional
features from [GitHub Flavored Markdown]()

A quick 'n dirty one-liner shell (bash/zsh) script to convert and run in one go
for now (assuming a PWD of the root, mine is at /srv/www/server.coffee at the
moment).

```sh
\
cp server.litcoffee README.md && \
git add . && \
git commit -am 'update' && \
git push && \
coffee server.litcoffee
```

## Introduction

This article or book was written as a exercise and programming language, style
and convention exploration of the possibilities currently provided by:

+ literate [CoffeeScript]()
+ [Github Flavored Markdown (GFM)]()

Purposefully aware I'll break some traditions and practices out of curiosity and
where my mind took me at that time. This document is intended to be moderated
over time. Perhaps even by more than one person, as a living example of the
concepts involving literate programming. So feel free to join in and share :)

## Not-so-stylish guide

Although we do not care too much about styling of code - as much visual things
of this document content have to be interpreted from the symbols within it -
there are a few common notations you need to keep in mind:

* We generate this using the latest stable release of coffeescript, it can
execute

* Be sure to keep enough space between your GFM markers (triple backquotes) and
also paragraphs so tools like Vim and Sublime will easily parse your text within
80 columns for terminals. Do this also for lists.

* Note that you cannot use a pound `#` sign on the first line of a coffeescript
block. You should generally keep the first line empty and start with 4 spaces
indention on the second line within the \``` coffee-script block.


> Note: the above styles are implemented in this document as much as I could keep
them in mind or semantical rules of the languages permitted it.

## Prerequisites

This machine is running a rolling Arch Linux release with the next-gen high
performance asynchronous service manager 'systemd'. For purpose of persistence
through (re)boot (used to be init scripts) we have written an exclusive service
file and sockets file to be used.

So below, after the piece declaring the GFM code-block in coffee-script, we
leave the first new line empty.

```coffeescript

    # Sneak in a logger real quickly... habit dies hard
    winston = require 'winston'

    # Splash is nice, how does winston like them?
    log = (args...) -> winston.info args...

    # TODO: move this to a vow unit test topic after a systemd check
    # using `systemctl info solobit.socket` on my z-shell SSH connection to
    # the VPS.
    log "/etc/systemd/system/solobit.{service,socket} started"

```

Note that the name is up to you to choose, just happens to be the name of my
enterprise (ahem) for comfort and clarity. Also keep in mind you may need to use
`sudo` here.

It will execute coffee-script on this file. For completeness, I should include
these file contents below, as they do not take much space.

This file is the service file and it will be tied to our socket file.

### Service definition

```sh
# filename: /etc/systemd/system/solobit.service
[Service]
ExecStart=/usr/local/bin/coffee /srv/www/SiteClusterManager.coffee
StandardOutput=syslog
SyslogIdentifier=solobit
User=nobody
Group=nobody
Environment=PATH=/usr/bin:/usr/local/bin:/usr/local/lib/node_modules/.bin
Environment=NODE_ENV=production
Nice=-10
OOMScoreAdjust=-500
IOSchedulingClass=realtime
InaccessibleDirectories=/home
#ReadOnlyDirectories=/srv/www
PrivateTmp=true
```

Btw, these are actually very good candidates for 'embedded resources' as a
concept. This includes the content of a file that could be extracted, created
and written 1-on-1 as long as we get a file name path and proper permissions.

Again, this would require for us to have a way and pass in variables/constants
for the external tools to use.

One solution that is a bit hackish might be to just use a naming convention such as:

```sh
# @Include this file because we flag -I or such here?
# @Using /this/path/and/name as we provided it.
# @Etc
And here we have the content
```

But in the end, we might as well just include these tools as integrated part of
the entire module so we may just pass the configuration details as coffeescript
to a included module instance. This would probably make the most sense although
some tools will just be easiest using only a CLI command with good defaults.

### Socket definition

This is a tiny file which holds our socket path and ensures that it runs at
start/boot.

```sh
# filename: /etc/systemd/system/solobit.socket
[Socket]
ListenStream=/run/solobit.sk

[Install]
WantedBy=sockets.target
```

Thats all. Using systemd I no longer have to use/write elaborate init scripts.
Now you are ready to enable the socket and see if it worked. Continue below to
read how...

### Enable and start socket service listener

```sh
systemctl enable solobit.socket
```

You can start it using the command

```sh
systemctl start solobit.socket

```

### Sanity checking and debug info

Finally to make sure that its running without any errors do:

```sh
systemctl status solobit.socket
```

Additionally you might want to check the log if something went wrong:

```sh
journalctl -xn
```

Thats it so far.

## Dependencies

### Native modules

Native modules are those packages which come with the default distribution of
[Node.js](); they are the core libraries written to bind directly to the layers
of the (C++) operating system architecture.

#### HTTP Server (traditional web server)

The very first code sample, node.js own `Hello World` contains a example web
server, a HTTP listener for any specified port but by default `8080` due to high
probability (and other abstracted ideas) of another web server running on the
port at `80`. As you'll later see, we are cunning in our attempts to run any any
protocol and any port under 80.

```coffeescript

    #
    # Include core node.js HTTP server library
    #
    http = require 'http'

```

#### Domains (experimental)

This is not included yet. I might also use something like Events2 or
ANSInception instead.

To be continued...

### Internal modules (this application domain)

Most larger projects and pieces of code written, we like to organize application
logic from the Node.js perspective of a `a module is a file` and expose
functionality through the use of the `module.exports` method.

#### Winston: asynchronous anything logger

So this used to a `winston = require 'winston'` script but instead we are going
to make this kind of logging its own internal module.

```coffeescript

    #
    # Optionally delegate logging tasks to another 'chapter'?
    # logger = require './lib/Logger.litcoffee'
    #

```

### External modules (third party packages)

#### Systemd: socket activated services

Support for running node.js as a socket-activated service under systemd

```coffeescript

    #
    # Not really need to assign this to a variable yet?
    #
    require 'systemd'

```

#### Autoquit: on-demand resources

Furthermore we want to save valuable system resources (I have this running on a
budget VPS with only 2 cores and 500MB RAM). There might be tons of sites I want
to host on this machine, but only a few might be current/needed/required to be
available. Examples are demo sites, prototypes, periodic administrative work and
so on. Therefor we employ a strategy much like other PaaS (Heroku e.g.) uses:
the resource becomes available only on request.


```coffeescript

    # We may choose not to include this style of three times # here but
    # the way GitHub currently parses Markdown files (GFM) `.md` inside their
    # site, the first new line and any will be neglected.

    #
    # Include the library to automatically spawn/die on command
    #
    require 'autoquit'

```

#### Journald: system control integrated logbook

We create a locally scoped variable (in the context of this file and those who
import it) to hold our `journalctl` logbook inside node.js and point it to the
instance of the `Log` object so we may use its exposed methods and properties.

```coffeescript

    #
    # Include this `journalctl` service log inside here :)
    #
    journald = require('journald').Log

```



#### Portchecker: asynchronous port scanner

We use this port scanning package to find out a few things about our system
environment. These checks are sometimes called 'sanity checks' and we do this
to make sure:

* we have internet (scan port 80 on google.com)
* we have a (range) of ports available and open (rights)

We will actually perform these checks later, as part of a series of unit tests.
This will also be passing metrics that we may find useful although this is a
typical requirement that we need on occassion, not always, so not worth
wrapping.

```coffeescript

    #
    # We use this package to ensure any ports we want to use are free
    #
    portchecker = require 'portchecker'

```

This may or may not be exported later. It's really the type of functionality you
may only need once during initialization and basic sanity checks. It seems
redundant to write entire seperated files for these purposes.


## Sanity checks

The subtitle for this chapter might be a bit 'simple' so it doesn't give away
much on the complexity behind this idea. Since this document will be parsed
during a period known as 'compile time' or 'build time' there are actually bits
of data only available to us during 'run-time'. This clearly distinguishes what
we already know now, and what we must know to maintain sanity, but not what we
can know. Also, my first statement is not entirely true: this document may
actually be compiled during run-time when someone (or when enough people have
requested the address through cache), using server- or client side rendering of
the view.

Luckily, this piece of code is for a server instance (cluster) so we don't yet
have to integrate this into the browser.

Ok. Now first we should get some modules that we need.

### Dependencies

Besides having our normal program dependencies, we also use a few 'test'
dependencies that become useful here. These are used in order to have integrated
BDD (Behaviour) or TDD (Test) driven development techniques.

```coffeescript

    vows    = require 'vows'

    assert  = require 'assert'

```

### Network status

This program/application is all about serving files/assets over the wire using
protocols (TCP/Streams) using ports and sockets and services. So in order for
everything to work as expected, we need to ensure a couple of things:

* do we have internet connection? If not, is a firewall blocking access or?
* which IP address to have our server listen to?
* which port do we use and is it open? Are we allowed even to listen/bind?

In our next blocos (blog code samples) I'll probably want to skip this write-up
because it violates the DRY principle as we also define these questions
elsewhere in vows.

#### Constant settings

We know this during write-up of this code document so lets specify them first.

Questions, questions. Let's try and answer them by specifying which information
we can provide during this write-up. This is our 'configuration' as local member
variables of this coffeescript node.js module. A trade-off of the sequental
style of writing literate coffeescript, is that we hide these basic
configuration details deep within the 'book'. This may not be wise from a code
maintenance perspective.

For clarity, we have the style convention of aligning the equal signs at tabs.
Keep in mind, I do not advocate this use and you need to know never to mix tabs
and spaces. In the end, I might go replace these by a `nconf` or like-wise
settings from JSON program.

``` coffeescript

    host        = '192.168.1.1'

    startPort   = 3000

    endPort     = 3100

```

I like - at least for now - to keep a range of 100 ports available for use by
our server. We might probably want a queue system where we pair node.js modules
with available ports. Think along the lines of: someone types url, varnish
matches regex to be node.js stream and forwards to cluster that is guaranteed to
be running using systemd sockets listening out and spawning the service as
required. If no one visits any of our sites, it will die out untill someone
does.

#### The checks (available during test/compile time)

Ok now how about we both answer these questions to satisfy our curiosity and
need for sanity, as well as provide some integrated BDD tests. With [Vows]() we
also get integrated code coverage so we now how fool-proof our tests coverage is
to get good estimates about code quality. Vows executes sibling contexts in
parallel, so I need to either use separate batches or use a sub-context.

There could be so much to consider on when to include or exclude such a thing.
We should all know and love clean seperation of concerns but one can't help to
wonder if sometimes we do it too much and too early. A thought-out and well-
written piece such as this one (ahem) fits perfectly however, in the early
(prototypical) period of your systems architecture design.

Test suites in Vows are the largest unit of tests. The convention is to have one
test suite per file, and have the suite's subject match the file name, but we're
gonna have to break that convention for now (due to the coherent, literate style
of writing). Test suites are created with `vows.describe`.

``` coffeescript

    suite = vows.describe """
        Network sanity checks and tests for cluster server.
        """
    suite.addBatch(

        # So this object could be anything, at least here it's a test cond.

        # todo ...

    ).addBatch(

        # Ok ^^^ We don't close that `(` opening bracket up here

        # NOTE: I can't use triple `#` for multi-line code in here!


```

Chaining batches is useful when you want to test functionality in a certain
order. Batches contain contexts, which describe different components and states
you want to test. Keep in mind, I'm still chaining the previous `suite` object
with subsequential methods, so I do not have to use `suite` here again because we
left the previous bracket `(` open here :)

``` coffeescript

    # So we can just continue here...

    ).addBatch(

        'A context': {},

        'Another context': {}

    )

```

    #winston.log 'info', 'checking ports'
    portchecker.getAllOpen startPort, endPort, host, (openPorts, host) ->

        openPorts.length and winston.info(

            "open ports on #{host} between #{startPort} and #{endPort} are: #{openPorts.join ', '} "

            )  isnt openPorts.length and winston.error(

                "no open ports in given range on #{host}"

                )

    portchecker.getFirstAvailable startPort, endPort, host, (p, host) ->

        if p is -1
            winston.info(
                "no free ports found on #{host} between #{startPort} and #{endPort}"
                )
        else
            winston.info(
                "the first free port found on #{host} between #{startPort} and #{endPort} is " + p
                )


    #---- check if the port is open
    # wait max 1 sec for result (defautl 400 milisecs)
    portchecker.setTimeout 1000

    portchecker.isOpen 80, 'google.com', (isOpen, port, host) ->

        winston.info "port #{port} on #{host} is " + (if isOpen then 'open' else 'closed')



```

Blabla




###

server = http.createServer (req,res) ->

res.writeHead 200, "Content-Type": 'text/plain'
res.end '\nHello world'

journald.log
  ACTION: 'sayHello'
  USER_ID: currentUserId

server.autoQuit()
server.listen(if process.env.NODE_ENV is 'production' then 'systemd' else 3000)

###


### Suggestions for optimal use experience

For a large portion, I believe in the enhancing effect of visual triggers. A
major one we have available to us for free, is syntax highlighting. In essence,
we can say that, together with the minimal distraction/syntax of CoffeeScript
and Markdown, we have very few color-overkill in our environment.

So I really advise using the [Sublime Editor 2][SE2] because its syntax
highliter works well with a definition for literate CoffeeScript as the creator
of CoffeeScript updated his release to this programming paradigm, he also
updated the Sublime syntax file that goes with CoffeeScript, which is nice
because most people wouldn't know how to write a syntactical matching regular
expression file for texmate :) You can find the [tm-bundle here][TMB]. I use
`ALT+Q` or also known as `Meta plus Q` keyboard shortcut to perfectly fit texts
within 80 column terminal width bounds to support ancient and obscure machines
(by now not then ^^)
