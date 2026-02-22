---
date: '2026-02-20T20:14:50+01:00'
draft: true
title: 'My Way (So Far)'
---
# TL;DR
TODO: a short paragraph to summarize the contents of this post

# Beginning
Since childhood I was captivated with sciences. The interest was
fueled by a trove of children's encyclopedia my parents got for me, and for a few
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
but this time it was for programming. Despite not getting anything remarkable there, I was
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

The first few months on the job were very insightful to me and culminated with me shipping
my first few lines of code. My change sadly introduced a bug related to null-pointer 
dereference and caused a runtime crash. The feature was heavily sought after by the users
so in a span of few day it crashed the app more than 10k times. Yeah, off to a great start,
I thought. But considering that the company was pretty young at that time and the experience
of my teammates was maybe a year more than mine this was not that terrible. We rolled out a
fix, and in the future the null checks were a bit less of an issue.

At that point the continual learning aspect of the job dawned on me. Everyone was learning.
Things you now find difficult were just as difficult to your teammates a few months ago.
and the pace of learning on the job was far greater than you would see in self-study, at
least initially. Every couple of days you were introduced to new concepts: SOLID, MPV,
MVC, IOC, DI, unit tests, logging, integration, code review, clean code, design patterns,
package managers, libraries and frameworks. I used to get images of IOC in my sleep,
ruminated on OOP concepts during my commute, imagined marble diagrams of events in a
reactive stream. I was hungry for knowledge, and my peers shared this sentiment. Together
we helped each other discover novel for us concepts and bit by bit learned what not to
do. At the time we didn't have much senior supervision, apart from some occasional
sessions with a few guys from another company. Sure, there were some large gaps in
things we didn't know we didn't know, but when it came to making stuff we were in a
good enough place.

One pretty important lesson I learned at the time was the importance of having a good team.
Software is complicated, and it takes time to get familiar with a new project, and
being not alone in that pursuit was very reassuring: I might not fully understand
what this particular piece of code is doing, but checking git blame I'll get to
someone who probably does, allowing me to ask some questions right at their desk if
need may be. Similarly, others could ask me about the things I wrote in the very same manner. 
To this day I cherish the peer-level kinship I felt towards my coworkers,
as we were all in pretty similar conditions, resulting in a very open mindset. 
(To be clear - the kinship is still there, just not that rose-tinted as it was then).

But as time went on and I learned enough to be productive at my job I started to
feel a bit unsatisfied in ways did not initially expect. Turns out there are different
kinds of code: some code is more essential to the inner workings of the project.
In my view at the time (in the context of Android apps being just another client for some API)
UI was a second-grade citizen because it concerned itself with aesthetics mostly,
and relied on the core business logic be performed somewhere else. I like looking
at pretty things, but turns out working on making things beautiful was not that easy
even if you had the designs in photoshop. I found the disproportionate amount of
time spent perfecting shadow gradients and subtle spacing across different screens
not very enjoyable: it was not much of a problem solving thing and rather "which
particuar attribute I have to use to achieve this specific effect". Thats when
I started to suspect that I don't like doing UI, and since android was pretty
much about UI, I scrambled to find a way out.

## The Good

I liked plenty of things about android dev experience (other than the fact that
it got me into software). I could
easily show people outside of work what I was working on. I knew through
in-app analytics that users interacted with the buttons I implemented or visited
the screens I worked on. The lag-free experience target was a very real teacher of
respect towards main thread. Using various APIs showed me how you can perform
integration of multiple separate systems into one useable package. Android had
a few platform-specific constraints around activity and frament lifecycle that
made architecture decisions important early on. UI logic is different from algorithmic
challenges and is much more about the flow of control than some Big-O efficiency.
Since the job was a mixture of Xamarin.Android and native Android I got to see
how modern languages (c# and kotlin) might approach the same problems using a different
syntax and let me dip a toe in some functional programming concepts. 

## The Bad

I came to a conclusion that simply I didn't enjoy the visual
aspect of setting up layouts in Android Studio. Furthermore, I did not know anything about the
behind the scenes of the HTTP APIs - all of it was just magic to me. I could not
even use my knowledge to just develop apps for another platform like iOS 
(yeah, sure, Xamarin promised that, but in reality you had to learn iOS development
with Swift/Objective-C anyway). And besides
that the application logic that we implemented was pretty much a thin wrapper around the
API, so I felt like I was coasting on top of real work being done somewhere else.
What I learned to do was useful, but not challenging in the way that I liked from algorithmical problems.
Oh and right about that time I started to feel that Google had a very disproportionate
grasp on the things I did, with my job essentially being a huge vendor lock-in.
I wanted to get away from UI work, become something more important and do something 
more _free_.

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
