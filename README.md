# Advanced Server Cluster Manager for Node.js

##### A little literate [CoffeeScript]() and [GitHub Flavored Markdown]() adventure

The 'entire' source code of this project can be found at:
https://raw.github.com/solobit/site.solobit/site/clusters/README.md

This part is used to demonstrate my profession as literate coder for long-term
sustainable development through architecture documentation, collaboration and
innovation. I also provide translation services from technical Dutch to English
and vice-versa.

<small>a original work by Supersymmetry</small>

Skip to go to: [Installation]() | [Style Guide]() | [Contribute]()

Subjects: [Software Architecture]() | [Programming Paradigms]() | [Patterns]()

## ToDo

Additional stuff to do:

+ Do some reflection on this file for further fine-grained management
+ Auto-require module imports etc.
+ Isomorphic and HTML5 contenteditable tips and trics
+ Self-scan to bridge `h1` to `h6` and the Markdown HTML identifier gap
+ Include isomorphic client/server view logic seperation (some just really is...)


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
* and of course the famous [Dr. Donald Knuth][LIT]

You can read more about the [motivation or rationale](<#rationale>) behind this
project and why I find it relevant for consideration.

I really advise using the [Sublime Editor 2][SE2] because its syntax highliter
works well with a definition for literate CoffeeScript as a tm-bundle
[here][TMB]. I use `ALT+Q` or also known as `Meta plus Q` keyboard shortcut to
perfectly fit texts within 80 column terminal width bounds to support ancient
and obscure machines (by now not then ^^)

<!-- These blocks should follow any subsection with many references for clearer
overview and easily link maintenance -->
[LIT]: <http://www.literateprogramming.com/>
[GFM]: <https://help.github.com/articles/github-flavored-markdown>
[LCS]: <https://github.com/jashkenas/coffee-script/issues/1786>
[SBE]: <http://savanne.be/articles/deploying-node-js-with-systemd/>
[0PT]: <http://0pointer.de/blog/projects/systemd-for-admins-3.html>
[ARC]: <https://wiki.archlinux.org/index.php/The_Arch_Way>
[TMB]: <https://github.com/jashkenas/coffee-script-tmbundle>
[SE2]: <http://www.sublimetext.com/2>
[SCS]: <http://autotelicum.github.com/Smooth-CoffeeScript/interactive/interactive-coffeescript.html>



## Rationale

This document is probably under constant moderation. GitHub history of commits
should make a nice timeline and practical code archive for me to feel confident
the legacy of this programming style is kept forever. In fact, it's largely what
the (Arch inspired) idea of `user-centric` coding is about.

For the most part, this section will describe those elements of our program that
deal with matters of 'philosophy' behind the creation of this work.

From [The Arch Way](https://wiki.archlinux.org/index.php/The_Arch_Way) we learn:

### Simplicity

> Simplicity is the ultimate sophistication. — Leonardo da Vinci

Let's reword something found in The Arch Way texts to better fit our ideas in
the context of a single app, not operating system.

```markdown

Simplicity itself has many definitions. We define simplicity as without
unnecessary additions, modifications, or complications, and provides a
lightweight coded, yet heavily commented CoffeeScript base structure that allows
an individual user to shape the system according to their own needs. In short:
an elegant, minimalist approach.

```

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




The last one being of course famous for the invention of this style originally,
quoting:

I believe that the time is ripe for significantly better documentation of
programs, and that we can best achieve this by considering programs to be works
of literature. Hence, my title: "Literate Programming."

Let us change our traditional attitude to the construction of programs: Instead
of imagining that our main task is to instruct a computer what to do, let us
concentrate rather on explaining to human beings what we want a computer to do.

The practitioner of literate programming can be regarded as an essayist, whose
main concern is with exposition and excellence of style. Such an author, with
thesaurus in hand, chooses the names of variables carefully and explains what
each variable means. He or she strives for a program that is comprehensible
because its concepts have been introduced in an order that is best for human
understanding, using a mixture of formal and informal methods that reinforce
each other.

## Setup

This is a self-documented, slightly opinionated, literate coffeescript file. It
is executable using a standard coffee-script installation. The Markdown in this
file can be best experienced as part of GitHub since it uses some additional
features from [GitHub Flavored Markdown]()

A quick 'n dirty one-liner shell (bash/zsh) script to convert and run in one go
for now (assuming a PWD of the root, mine is at /srv/www/server.coffee at the
moment).

```sh

cp server.litcoffee README.md && \
git add . && git commit -am 'update' && \
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
indention on the second line within the \`\`\` coffee-script block.


> Note: the above styles are implemented in this document as much as I could keep
them in mind or semantical rules of the languages permitted it.

## Prerequisites

This machine is running a rolling Arch Linux release with the next-gen high
performance asynchronous service manager 'systemd'. For purpose of
persistence through (re)boot (used to be init scripts) we have written an
exclusive service file and sockets file to be used.

So below, after the piece declaring the GFM code-block in coffee-script, we
leave the first new line empty.

``` coffee-script

    # Sneak in a logger real quickly... habit dies hard
    winston = require 'winston'

    # Splash is nice, how does winston like them?
    log = (args...) -> winston.info args...

    # TODO: move this to a vow unit test topic after a systemd check
    # using `systemctl info solobit.socket` on my z-shell SSH connection to
    # the VPS.
    log "/etc/systemd/system/solobit.{service,socket} started"

```

The socket is enabled and started by using the following command from the shell:

```sh
systemctl enable solobit.socket
```

It will execute coffee-script on this file. For completeness, I should include
these file contents below, as they do not take much space.



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

```coffee-script

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

``` coffee-script

    #
    # Optionally delegate logging tasks to another 'chapter'?
    # logger = require './lib/Logger.litcoffee'
    #


```

### External modules (third party packages)

#### Systemd: socket activated services

Support for running node.js as a socket-activated service under systemd

``` coffee-script

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


```coffee-script

    #
    # We may choose not to include this style of three times # here but
    # the way GitHub currently parses Markdown files (GFM) `.md` inside their
    # site, the first new line and any will be neglected.
    #
    require 'autoquit'

```

#### Journald: system control integrated logbook

We create a locally scoped variable (in the context of this file and those who
import it) to hold our `journalctl` logbook inside node.js and point it to the
instance of the `Log` object so we may use its exposed methods and properties.

```coffee-script

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

```coffee-script

    #
    # This may or may not be exported later. It's really the type of
    # functionality you may only need once during initialization and
    # basic sanity checks.
    #

    # Import the https://github.com/danielzzz/node-portchecker package from npm
    portchecker = require 'portchecker'

```


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

```coffee-script

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

``` coffee-script

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

``` coffee-script

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

``` coffee-script

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


    #---- check if the port is open ---------------------------------------------------
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


