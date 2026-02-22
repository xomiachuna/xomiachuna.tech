---
date: '2026-02-20T20:14:50+01:00'
draft: true
title: 'My Way (So Far)'
---

# Beginning
- start with school
    - elaborate on my relationship with math and similar sciences
    - expand on the ease of exploration and iteration
    - at some point in early highschool mused about becoming a mathematician
- pivot into practical realities of earning a liveable wage
    - low-income family, parents did not finish their degrees and ended up regretting it severely
    - wanted to still be involved in my career and doing manual labor was an option my parents advised against
    - in Ukraine the salary of an SWE combined with PPP makes it a very sustainable financial option
    - I started looking into programming in highschool and on my final year ended up in the country-level of programming olympiad
- bring up the point of engineering as a core direction for my self-actualization
    - while studying at school i didn't have a clear picture of how olympiad style programming could earn money
    - but still it was worth a shot and in case that didn't pan out I thought I could go into regular engineering
    - at this point I started seeing math as more of a tool than something to pursue directly, and utility of my work was the goal

# First steps: Android
- started working asap, looking into any possible way to get into sowftware
- landed android dev position and started learning on the job
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
