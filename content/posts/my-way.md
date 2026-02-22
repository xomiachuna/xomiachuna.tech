---
date: '2026-02-20T20:14:50+01:00'
draft: true
title: 'My Way (So Far)'
---
# Snowflake

## Tagline

I've spent 8 years trying various software engineering roles and distilling a 
taste for the ways software is built before finding a niche (golang backend) 
that I find truly a good fit for me based on various aspects of development
I've seen over the years.

## Main structure

- started working in software fulltime at 18, now I'm 26 and switching directions once more
- did android, then ml and mlops
- often found certain aspects of those areas to be poorly fit for my kind of mind, although certain aspects were pretty neat
- by the process of elimination was able to settle on backend with go as the primary way forward
- remain open to new experiences but my current priors suggest that the current state is pretty close to optimal (which was not the case for previous career shifts)

## Characters

### Me

- Summary: I've spent 8+ yeaars in various software engineering roles trying to find
something that will be a good fit for mi kind of mind
- Motivation: Want to feel professional satisfaction
- Goal: Find a subset of software engineering where I feel the most productive and useful
- Conflict: Software engineering is a very broad field and deciding what to pursue is both non-trivial
and time-consuming, with subfields being pretty different in many key ways and roles having
different shapes of responsibilities
- Epiphany: After trying some pretty complicated domains, I end up realizing
that I enjoy specific balance of simplicity complexity, contrary to my previous 
beliefs about preferring the most complex thing possible, which leads to me deciding 
to pursue careen in backend with go: simple in certain ways but the problem space
one can tackle is still pretty big.

#### Plot summary

##### Beginnings

I decided to pursue programming almost by accident after tinkering with it in highschool, as
a more outcome-oriented alternative to focusing on more theoretical fields like
physics or math (which I enjoyed a lot). sure it would be cool to earn a living soving equations,
but Ukraine is not exactly a golmine of such opportunites, and coming from a low-income
family I knew I had to be a bit more serious about future prospects.

In university I quickly decided to dive head-first into professional
SWE and landed my first job a few weeks after becoming 18. Shortly after I already knew
that this was not some temporary thing - I found the start of my way: it was about computers (i like those),
required logic and systematic reasoning (unlike say giving out flyers to passerbys in the street) and pays
pretty well (although my first salary was around USD200 for first few months, it still felt like some easy cash
for a student of my age to make, and the progression of income was astonishing and essentially unbeatable in Ukraine). 

##### Android

My first role was Android developer, and I learned a lot about software but felt the platform to
be a bit limiting - the complexity there stemmed much more from UI than from the
business logic or the use of complicated (by my asessment then) technologies: client apps are cool
but they didn't scratch my particular itch for solving problems: I didn't find coloring buttons
and playing with the android internals very rewarding as the skills seemed to be very platform-specific
and didn't expand much on the behind-the-scenes of the modern software stack, making you subservient
in a way to the whims of the APIs youre using, devaluing the legitimacy of the platform as an independent
part of the whole. 

I don't particularly enjoy the always changing APIs of android,
arcane incantations on top of adhoc solutions of ml and sheer intractable supply chain and runtime complexity
of modern infra: too many black boxes, too much uncertainty about the outcomes of your work, too much being at the mercy
of dozens of suppliers. Yet there are still things that I found cool about those fields and in total it heavily
impacts my understanding of software making process, resulting in a certain "taste". 

Android taught me the importance
of teamwork nd how it is tightly connected to the code structure and how skipping out on one will impact the other.
We've spent a lot of time as a team exploring different approaches to code structure, and in the process of dialogue
continuously shared and refined the vision of how it would be most ergonomic to work together. The contrast between my first
change in prod being a crash that stopped the application more than 10k times in the few hours since the release and the
later improvements to the workflow and code review that caught or eliminated such things early on was pretty stark. Its there
that I got my first taste of complexity, and I concur that some of things I did were cargo-culting behavior
(particularly with the overreliance on reactive programming) as we struggled to find any reliable, albeit overly complex,
ways to structure the code. Having gained some experience of what not to do I was even put in charge of some trainees and got
my first taste of what its like to make decisions that impact not just your work but also that of those you lead.
In the process I've learned that UI work is not something I necessarily enjoy: adding shadows or fiddling with layout just doesn't
hit it for me in the same was as thinking of business logic does, so me looking for ways to get closer to the meat and potatoes
was a matter of time.

##### ML

Then by a coincidence (a new guy at the office) I got introduced to the world of ML: pretty close to the edge of
research at the time, a lot of interesting math and very-much non-trivial problem solving required.
After 3 years of doing that I ended up a bit dissilusioned: it was much more like scientific
research (with plenty of uncertainties and unknowns) than engineering, you couldn't guarantee much
of anything about the performance of your model priot to starting the project, the iterative improvent
story got old real quick and in many ways you were just a tiny piece of something more real and more
important (the system as a whole). You spend weeks to months applying
various models to your problem, churning out hyperparam optimization runs, go through hoops with data augmentation all to end
up under the accuracy threshold required to proceed further with the project or end up using some automl from a cloud provider
that runs laps around your approach both in accuracy and speed, with no clear means to even learn what you were doing wrong.

ML sidesteps the UI completely (well, apart from maybe
EDA, which I also was not that fond of), allowing you to focus on solving problems, with mathematics at its core. Despite the
issues with research uncertainty, once you did get something usable it was not that hard to reason about - the data flow
is very transaparent and essentially a pure fucntion. Most of ML is stateless by design, a true example of a microservice, which makes it relatively 
easy target for horizontal scaling and it benefits a lot from the advances in cloud computing. But data and compute are a problem:
it is pretty difficult to begin any meaningful work without having a dataset (or at least a baseline model for finetuning) and
a bunch of gpus for the domains I've had most experience in - NLP and CV. The set of problems adressable in this way
was not that wide at the time: it boiled down to extracting information from existing data, but rarely would be useful
as a standalone tool. I found the concepts of reproducible research and good documentation to be remarkably beneficial
and important for my understaning of problem solving, and to this day I tend to write extensive docs for myself in obsidian, somewhat
mimicking the feel from jupyter notebooks. By far the biggest gripe I had with ML was the length of the feeback cycle: from
idea to updated metrics it took inordinate amount of time, and given my tendency to sporadically ideate a bunch of ideas the long wait
was killing my momentum. At this point I yearned for something still on a similar level of complexity but with shorter
feedback cycles, somthing I could iterate quickly.

##### Infra

In working with ML I got acquainted with infra concepts and devops - once even had to provision a k8s cluster running
apache airflow workloads in hetzner and found the infra-as-code pretty interesting. It got to the point where I
was getting excited to learn how modern cloud infra works and at some point even went through a CKA certification prep
course on kodecloud: I was starting to get a better idea of what the modern application stack looks like from top (clients, APIs)
to bottom (vms, containers, networking). 

Having burned out from ML I took a 6mo break to relax from the research-induced stress
and by the end of it focused my efforts on getting better with infra. At that time MLOps was becoming a new hot thing, 
and although it was pretty vague, I found the intersection of my practical understaning of ML as a practitioner and my interest in infra something that I could 
combine under one umbrella and do a bit of both. And thats how I ended up working as an MLOps for the next 3 years.

Infra piqued my interest ever since I wrote my firts Dockerfile circa 2019. Sure it was a bit magical, but being able
to consistently package a lot of complexity around python APIs for ML into something one could easily deploy felt empowering.
And then the orchestration on top was a tipping point for me: now every project was something I could slap a Dockerfile
and a compose manifest and get it to run on my env just as easily as it would on some cloud provider. For most people in
my circle the concept was not as interesting as they were more focused on, ya know, research. Yet I was fascinated with being
able to manage the complexity is a few dozen lines of yaml. Once I was able to deploy a kubernetes cluster on hetzner on top
of bare VMs and run a whole ETL pipeline for an ML algo on top of it I finally started to convert to an Ops person. With it came
a great appreciation of staying vendor-neutral through the use of proven OSS tools. Sure, k8s concepts are not that trivial,
but in return youre able to run anywhere you could put k8s on. Declarative specs, ability to meaningfully iterate on your own
hardware, seeing how infra can impact the decisionmaking process was profound. But soon the cracks started to show: real infra
is not so much a bedrock but a constant battle agains entropy. Updates come and break things, drives fail, PSU can give up
on life and at that point your manifests mean shit and now you have to go deep into the weeds of the complexity of the tower
you built with the sole purpose to avoid it. But you cannot reliably abstract real world in a nice compartmentalized way.
I didn't feel like a betrayal tho, more of a realization that the problem of managing all of the complexities of technology
takes a lot of work. After one too many infra failures I've realized that I cant keep the facade of being someone that understands
whats going on. I was more of a kubernetes engineer than actual ops person. Having the foundation be exposed I felt like
I'm not well suited for this line of work. I wanted to solve problems, but not all kinds of problems: fixing networking or
updating cuda drivers were not that rewarding to me.

That also ended up being a source of disappointement: infra
and ops is something you have to continuously tend to, you can't really solve it once and for all, and
unlike with previous 2 options your work is much much more important to the whole team, making your
work a potential failure point, and since the constant attention to maintenance and upkeep is required
you essentially end up feeling less like an engineer and more like a nanny to a fragile modern
system with pretty big surface for thing to inevitably fail. I just couldn't bear the stress of living
under this sword of damocles. But I did gain a lot of appreciation for the work of infra teams once I saw
what goes into making the proverbial sausage.

##### Back to the start

This led to my interest in pursuing infra fizzle out with time - it was cool when it worked, but man is it tedious
to learn a bunch of systems just to thinly glue them together for some semblance of a foundation for others to work on.
I yearned for some regualar programming ang got sick of writing k8s manifests or resolving terraform planning issues.
And so once again and I ended up taking a sabbatical - but this time to look within and find something that would
satisfy me. 

While a lot of the time during the break was spent on non-work adjacent things (a bit of travel,
exploration of music, just enjoying various media I've been putting off and thinking about my place in the world),
I've spent a considerable amount of effort reading _The Texts_ (various RFCs, blogposts and books that describe foundational
ideas behind the internet and software as a whole), took a deep dive in golang (which is very approachable compared to
say python ecosystem) and backend engineering in particular (architecture, design, various toolkits
for testing, specific approaches like CQRS and DDD and so on and so forth). There are some concrete apsects of backend engineering that sold me on it, and most of it has to
do with individual agency and freedom to explore and iterate. 

And in a true storytelling fashion I ended up pretty close to where I started: I just like doing regular software. Sure, I'm not helping bring
on the AI era nor am I attempting to neetly hide the complexities of billions of lines of code and heaps of hardware behind
some tidy yaml. I tried those fields, each time sincerely hoping that it would bring me certain kind of
intellectual satisfaction, yet I ended up finding specific dealbreakers which were not apparent at the start. It did however made
me cherish the "last mile" of engineering that ties all of it together - the actual application code. You can make infra
as complicated as possible, train an ML model that is able to perform majestic feats, yet without the application
it might as well be a fairy tale. And the truth is that a lot of software does not need those kinds of complications to work.
There is a plance and time when one should to use sophisticated infra or must resort to an ML model in otherwise intractable
domains. In fact both modern infra and ML are born as a result of developments in classical software. I cherish the
knowledge I gained while pursuing those fields, and it gave me a good understaning of what is possible at what levels
of abstraction. But now that I know what its like I make an informed choice of sticking to the basics.

##### Why this time its different

I find Go specifically interesting because it is very pragmatic: it is pretty difficult to make go code unintelligible
(compared to say Kotlin, React or Python), the culture around it is that of pragmatism, you can make decently complex stuff
simply by using stdlib, the tooling is pretty powerful and once you learn the core idioms pretty much all of the go
code becomes pretty transparent: you can very easily determine whats going on in a piece of code without having to check
for hidden magic behavior of decorators, dsls and complicated lifecycles. It is not as flashy or cutting edge as some other
languages and is pretty much suited for cli tools and backend software only, but since I don't like working with UI either
this is not a dealbreaker for me. It juts feels very mature reliable and _antifragile_ and gives me a specific kind of confidence about
working in it that I couldn't get before.

