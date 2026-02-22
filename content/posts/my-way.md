---
date: '2026-02-20T20:14:50+01:00'
draft: true
title: 'My Way (So Far)'
---
# TL;DR
TODO: a short paragraph to summarize the contents of this post

# Beginning
Since childhood I was captivated with sciences. The interest was
fueled by a trove on children's encyclopedia my parents got for me, and for a few
years the primary kind of present I got was books full of illustrations about space,
animals, technology, human body and adjacent topics. In school I often was at the
top of my class at math, and later at other sciences. Physics specifically showed to me 
that you can apply mathematical thinking in useful ways to solve practical problems.

I heard about applied math and for some time even mused about pursuing it as a career.
But even im my childhood naivetee I understood that it is not a realistic path to a
stable job, not in Ukraine at least. My parents did not finish their higher education,
and in fact I was going to be the first in my lineage to get a diploma, so I had to
decide what to focus on during my highschool years. Mom and dad specifically asked
me and my siblings to get a job unlike theirs, that is without difficult manual labor.

Early 2010s made software as a career pretty commonly known option even in my part of 
town - here and there you could hear about someones cousin working with computers
for some international company and getting a good paycheck. I did not know about
the economics of global IT market and the effects PPP had on the livelihoods
of SWEs in Ukraine, making it dramatically more secure than many other options. But I
knew that I liked playing games on the computer, and getting paid to do something
with a keyboard and mouse seemed like a great deal to my highschool self. Even better
still I heard that it is in some ways related to math, so I imagined my relationship
with logic and structured thinking was not going to be over any time soon.

I looked into basics of JS somewhere around 9th grade, but it was not something that
clicked for me at first. Sure you could print text to a console, so what? So I shelved
the idea for about a year and instead focused on math/physics. I got to regional
level of physics olympiad and to a national level in math, but could not progress
further than that - all otherwise good achievements, but I felt like I was running
into some wall I could not describe. Not only was it about an actual problem solving
skill issue but I also felt that my time for deciding what to pursue was getting short.
I wanted actual usefulness, not some abstract in a vacuum type thing. The math started
getting hairy, I couldn't grok it as easily as before, and solving equations did not show
any clear path ahead for me.

Once I got introduced to olympiad-style programming the things finally click for me.
You could solve problems not that different to the ones you did with pan and paper,
but also so much more. Right about the time I was doing prep work to a programming
olympiad at school using pascal and python and got to play with graphs - I was hooked.
The applicability seemed much more powerful. The beauty of seeing a data structure
and an algorithm for it was the moment of no return. 

In my final highschool year I once again got into national-level round of an olympiad, 
but this it was for programming. Despite not getting anything remarkable there, I was
certain about what I'm going to chose next. At that point I had no idea how traversing
graphs or linked lists could earn you money, but figured that I'll get to it once I
start my major.

During my first year doing a CS major I got familiar with the professional scene in my
hometown. Despite the city being not that big, the tech comunity was pretty active, with
plenty of events and oportunities to find a way to enter. I did a few bootcamps before
finally landing my first real job just a few weeks after I turned 18 as an Android dev.
At that point I knew that I no longer have to think of some backup strategy in case I will not
be able to get into software (which probably would be something like engineering). I was
happy as finaly I could put my analytical mind to some good use and start earning a living.

# First steps: Android
- understood that I like working with software in general
- saw that it is not merely about the code but also about teamwork
- started wondering if switching careers migth be an option as there were certain things about mobile that I didn't like  

## The Good
- The results of your work are easily shareable even to uninitiated
- Working with user-facing elements is interesting in it own way and ui poses
a set of challenges not taught in my CS curriculum at the time
- You learn that performance is something that is noticeable and requires care
- Having an architecture is basically a requirement past any trivial applications
- Got me acquainted with C# and Kotlin

## The Bad
- The modern app itself is mostly an enabler of some other system
- UI work is not that interesting to me specifically ("make #fff whiter" incident)
- The knowledge feels very narrow and vendor-specific
- In some ways you are a hostage of whims of Google, and end up churning through
frameworks and approaches regularly
- I wanted to get away from UI work and client apps and wanted to do something more
challenging (as I understood it at that time)

# Trying exciting new things: ML
- By coincidence looked into ML thanks to a new coworker
- Rekindled my math skills, thought it to be a better use of my time
- Was right around the time ML was gaining widespread adoption, got to work on
different domains

## The Good
- Learned about the research process from inside: from problem statement and data
gathering to reports and deployment and how it fits the business processes.
- Got somewhat close to the edge of contemporary research and read a bunch of papers,
which remains helpful to this day.
- Took up Python, and by necessity looked into modern APIs
- Focused on streamlining research process as much as possible through automated
experiment tracking
- Learned about the importance of clear communication with stakeholders on the intricacies
of technical aspects that will prove important.

## The Bad
- There is no guarantee you can give about the success of your work ahead of time
- The area is genuinely close to research with all of its idiosyncies around statistics,
interpretation and reproducibility
- The dev culture among DS is lacking and is full of cruft, ad-hoc solutions and is
generally full of PhD-style of code that solves the problem in almost intractable ways
- The result of your work is not something that can live independently, possibly requires
specific complicated infrastructure and is poised to be a subservient of some other system
- Experimentation is costly in terms of time and resources, feedback loops are long
and not necessarily result in meaninful intuition on next steps other "well that didn't work"
- I wanted to get back into something closer to engineering and spend less time doing scientific research

# Getting wider in scope: Infra
- Started interacting with infra during ML days and it piqued my interest
- Decided to spend a few months just diving deeper
- Ended up getting into MLOps role (ML + infra).

## The Good
- More engineering effort, concept heavy work
- Shorter feedback loops
- Understaning of modern infra landscape from operator standpoint
- Powerful intuition regarding infra scaling and portability of systems
- Witnessed the shift from more traditional ML and DL to LLMs, seeing fist hand the birth of a new paradigm through
early llama + lora deployments
- Got to work on heterogeneous environment (cloud/onprem hybrid) and some beefy setups like DGX

## The Bad
- You are at the mercy of the hardware way more than you might expect
- The sheer complexity and amount of pieces you need to juggle is mind boggling
- Downtime at this level is extremely impactful to many people
- You still cannot avoid having to learn many vendor-specific systems
- Does not solve any final-mile problems the users have
- Might be subject to cargo culting and overcomplication
- I ended up concluding that infra is a busy kind of work, but not the right kind of busy for me 
(more about firefighting and support than solving real problems that people actually care about)

# Recapitulation: Backend
- Decided to look for a better direction
    - Android/Web UI is too much concerned with the user interaction and not enough 
    with the core problem solving (usually)
    - ML is way too stochastic for my liking
    - Infra is way too far from the core problem solving as well and has a very wide 
    scope of control and difficaulty with testing
- What I wanted was:
    - Something that will solve end-user problems
    - Short feedback cycles (ideally as short as possibe)
    - Deterministic in nature (at least to a reasonable degree)
    - Complex enough for evolving expertise
    - Simple enough to reason about the core of the system
    - Not innately limited to particular domain
    - With a good engineering effort behind it and not just some random bunch of ideas
    - If possible - no or very limited amount of UI work specifically
- This pretty much boiled down to chosing between system, IoT and backend programming, 
of which I picked the latter.
- Based on my experience in various languages I ended up chosing Go as my next language
    - straightfoward and pragmatic design
    - healthy community
    - wealth of resources
    - good performance
    - easy to reason about
    - restrictive enough to limit some suboptimal software design patterns 
    - general enough to be useful in many contexts
- Focused my attention on a lot of foundational resources for software development, including
various RFCs and official docs.
- Went through the process of trying and implementing various such concepts (e.g. TDD/BDD, CQRS, OpenAPI etc.)
in short focused sessions (which I call etudes and perhaps will cover in a separate post).
- It feels good to finally be able to understand in detail what is going on and not just be relegated to
using some cargo-culted adhoc vendor-specific piece of code.
- The things I've learned along the way made me appreciate the various levels of work that goes into making something
- I hope to use my cross-domain experience to better guide my development efforts in the future and have an informed 
opinion on various technical aspects
- For the foreseable future I plan to focus specifically on backend, but I will remain open to adjacent fields
like system programming or IoT or perhaps even trying out a fullstack role sometime

## Why this time is different
My previous career shifts were mostly motivated by a negative experience: the main thing about the switches was
switching from something and much less thought was given what to switch into. I didn't want to work on UI so
I went to ML. I didnt want long and difficult experimentation and went into infra. And one might even suspect that
in going from infra I wanted to avoid the constant pressure of supporting the rest of the team. While the last part
is true, the main reason this time is different is because I know what I want. I want to work on the business logic
side of things. I want to be able to prove that what I've implemented adheres to the requirements. I want to
be confident in my work and know the ins and outs by starting from fundamentals and going upwards. I want to
utilize my problem solving skills in an efficient and productive way. I want to have fun while doing it.

The break I took from my last position proved to me that achieving this is possible: once again I feel like I can
meaningfully build on my knowledge, tackle concepts of increasingly complex nature and not depend on some unforeseen
forces swaying my chanches of getting better. Turns out you can just do stuff.
