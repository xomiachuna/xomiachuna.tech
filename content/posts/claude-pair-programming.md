---
date: '2025-10-11T15:25:07+03:00'
draft: true
title: Thoughts on pair programming with llms
---

## Disclamer: my biases with regards to llms

Although I did work quite a bit with llms (did my masters thesis on GPT-2 for Ukrainian in 2021-2022, 
deployed and used various open models when working as ML/MLOps engineer) and saw first-hand
the progression from random gibberish generators to the current state of llms - I remain rather skeptical
of the idea that current iteration of language models is something that will entirely replace ~~a significant amount
of real work done by humans in text-adjacent fields - and code is no exception.~~

Especially I'm weary of trusting anybody who claims that "vibe coding" is a serious
approach to development that the industry should consider as normal.
Some of it is due to me just being protective of the field I have the most experience
in (writing code is the only serious job I ever had apart from giving out ad flyers to passerbys when I was 16),
and I'm aware of that bias. But the more pragmatic argument for me is the fact that it is not
possible to "forget about the code existing at all", unless one wants to return to magical thinking
and worship the spirits in the machine as something that only listens to pleas and prayers. 

There are actors that want to capitalize on the fear of being left behind and 
push for rapid adoption of llms in order to sell their products.
_"Soon there will be no need to train new software developers!"_ they say. I have my reasons to
disagree, which might be better explained in a separate article, but the gist of the argument -
it is necessary for them to promote such worldview as they have so much vested interest in this being true
that they no longer are able to backpedal on such claims (unless they want to lose the VC money).

I do see quite a lot of value in using llms as an unstructured index of the textual data on the internet
that can be queried using natural language - for some of the types of info (those that have a lot
of literature associated with them, like classical music theory for example) it is often useful to be 
able to start your search with a very vague question ("I want to learn about composing melody, what do I need?") and
progressively narrow down the scope of your incquiry until you get to some concrete pieces of reference
(e.g. *Gradus ad Parnassum* by Fux on counterpoint), after which you can continue your investigation
using the _primary sources_ and use the language model as a more coherent rubber ducky to help work *through*
the material (not *instead* of the material!). 

It's also worth noting that ethics of llms remain at best grey: llm companies essentially commit
intelectual property violations on a planetary scale and don't bat an eye - all under the excuse of potentially
bringing forth _**The AGI™**_ which will - supposedly - solve all of humanity's problems. 

## What llm-powered software development might look like

Having said all that - I'm open to being proven wrong: perhaps even the current models in fact do make anyone a 10x
developer and we're on the brink of a revolution ushered by the brave believers and pilgrims of this new way of doing things - 
we just need to believe, let go of preconceived notions about development status quo and turn into the vibes.
Since I don't have any other real qualifications apart from writing code for the past 8 years - the only
way for me to evaluate that claim is to use llms in the context of SWE.

Quick search on the current best tools led me to try out _agentic_ development with Claude code. _Agentic_ means
that the model has means to interact with its environment through tool calling, and is thus able to both
read and write data to the disk through integrated set of APIs - file access, command execution and so on.
I remember when first mentions of such approaches were limited to [autogpt](https://github.com/Significant-Gravitas/AutoGPT) a couple of years ago,
and based on my current understanging it is essentially that but with the improved tooling support on both model
side and the coding environments themselves. Thus we can view the model as a sort of agent that is able to do its thing.

I've read quite a few stories on the failure modes of the vibe-coding approaches, and often the rough edges
were: the lack of understanding of the code by the human doing the vibing (either through unfamiliarity with the language
or specific tools used by the llm), the poor performance of the model itself (running out of context space, model
being of poor quality) and the general lack of cohesiveness of the work being done from the point of view
of external developer - conflicting architectural decisions, mess of spaghetti code, lack of direction - these lead to the 
potential rework by humans being either very expensive or even impractical. While such issues might not be important for
the scenarios when vibecoded projects are meant to be disposable prototypes (in which case I have no real problems with that),
the cost of letting it happen essentially prevents reasonable teams from adopting such style of development.

The other extremum - using llms to write only very small pieces of code with limited context by giving the context manually
trough a chat interface suffers from the very narrow applicability: it might be ok to do some trivial data manipulation or
serve as an inspiration but is definitely not the way to get code that adheres to all of the requirements the usual human
code would be subject to.

Thus my search was for something in the middle: using an llm as a meaningful realistic multiplier of my efforts without
elevated risks - i.e. the result should be something that I'd be as comfortable working alogside with as something produced
by a fellow *homo sapiens*.

But how *do* you trust the code produced by humans? Well, this is done through a combination of **tooling** (tests, linters etc.) 
and **processes** (code review, documentation, design). Thus we should employ both with the llm agents.

The question is then who (using the term loosely here) should be responsible for what? The human knows all of the external (with regards to the code)
context: broader requirements (including those that are implicit and not written anywhere), possible timelines, 
prospects for future scope, team structure and skillset etc. Additionally the human might have some
ownership of the project, making them responsible for the outcomes and decisions along the way (as IBM understood loong ago -
you cannot make a machine responsible for decisions - there is no notion for accountability for it). Writing the code itself,
on the other hand, is something that a machine can be entrusted given we constrain it sufficiently enough: we as an industry 
have been using codegen for many decades.

Thus the separation of roles becomes: anything related to non-trivial decision making that affects external context
can only done by a human - making the human accountable, and a machine can be entrusted with the minutia of writing
LOCs as long as the code fits within the external constraints. Since, by our definition, the machine cannot know all of
the external constraints - this role of enforcement is to be performed by a human. Essentially the duo becomes
a human supervisor and an agent grunt worker. Notice that nowhere here do I mention the capabilities
the llm migh have - I believe that this framework is independent of the capability set of the model and the things
that might change with the better models are the speed of production of LOCs and the probability that the initial
results are up to standard (signalling better understranding of the requirements imposed by the human); until an agent
has a capability to be present on the team calls, read all of the internal discussions and be pretty much a full stand-in
for a remote worker with nigh infinite context - this approach is the only sensible one I can think of.

We can, however, formalize and document quite a bit of the requirements through human-written documentation:
[ADRs](https://cognitect.com/blog/2011/11/15/documenting-architecture-decisions.html)
for architectural decisions, diagrams for a rough design outline, test cases (e.g. in the form of BDD scenarios)
for expected behavior. It is very important to not let the llm author these in any significant way: architecture
decisions are to be made by a human and should be written out by a human, design diagrams are a translation of the
design in one's head based on the team and previous experience and should be created by a human,
test scenarios are a proxy of the end user requirementsRand are the part of the context to which an llm will
not have access. Sure, a few typo corrections won't hurt when it comes to docs, but the core should be authored
by someone who can be held accountable: the decision to add a message queue is not about the addition of a rabbitmq
helm chart and `go get github.com/rabbitmq/amqp091-go` - it is about agreeing to all of the costs (technical, organizational
and financial) that come out of this, and Claude is definitely ain't the one who is going to deal with that.

## My experiment

### Setup

To try this out in practice, I used a toy project I have made earlier for a simple
read-it-later service. The specifics are unimportant apart from the general shape:
- monolithic Go API written using `net/http`
- uses PostgreSQL as a database + sqlc for SQL-adjacent codegen
- built around the idea of volatility-based decomposition - an approach to architecture
described by _Yuval Lowy_ in _Righting Software_; can be though of as an extension of
`handler -> service -> repository` approach with a few constraints on the call patterns and the scope of each tier
- a BDD test harness setup with `godog` and feature files written in Gherkin
- tests utilize `testcontainers` with docker compose for infra setup
- ~5000 LOCs (including documentation and PlantUML diagrams).

### Goal: Migrate from Postgres to SQLite
Since it is a toy project, this is a somewhat sensible and easy to comprehend task which
does not require any deep understanding of the specifics of the application and yet still is
non-trivial (compared to, say, fixing a logic bug).

Lets see the architecture of the app (wallabago is the name of app; it is portmanteu of [`wallabag`](https://github.com/wallabag/wallabag) and Go):
![architecture-diagram.svg](https://github.com/xomiachuna/wallabago/raw/main/docs/diagrams/dist/architecture-components.svg)

While this is quite a handful, the thing that we care about is the db-neutral `Storage`
API (with no database specifics exposed apart from the `database/sql` transaction awareness).

Each of the consumers of said API have a consumer-defined interface which they expect to have at runtime:
```go
// managers/identity.go
package managers

type IdentityStorage interface {
	AddClient(ctx context.Context, tx *sql.Tx, client core.Client) error
	GetClientByID(ctx context.Context, tx *sql.Tx, id string) (*core.Client, error)
	DeleteClientByID(ctx context.Context, tx *sql.Tx, id string) error

    // ...
}

func NewIdentityManager(
	identityStorage IdentityStorage,
    // ...
) *IdentityManager {
	return &IdentityManager{
		storage:         identityStorage,
        // ...
	}
}
// ...
```

```go
// engines/bootstrap.go
package engines

type BootstrapStorage interface {
    // notice the overlap with the previous interface
	AddClient(ctx context.Context, tx *sql.Tx, client core.Client) error 
	AddUserInfo(ctx context.Context, tx *sql.Tx, user core.UserInfo) error
	AddUser(ctx context.Context, tx *sql.Tx, user core.User) error
	GetBootstrapConditions(ctx context.Context, tx *sql.Tx) ([]core.Condition, error)
	MarkBootstrapConditionSatisfied(ctx context.Context, tx *sql.Tx, condition core.ConditionName) error
}

func NewBoostrapEngine(
	storage BootstrapStorage,
) *BootstrapEngine {
	return &BootstrapEngine{
		storage: storage,
	}
}
// ...
```
Overall, nothing unusual for a Go codebase.

The implementation of the `Storage`s is a single object `PostgreSQLStorage` which has all of the storage methods and uses
a `sqlc`-generated type `database.Queries`, and has methods like this:
```go
// storage/postgres.go
type PostgreSQLStorage struct {
    // ...
	queries *database.Queries // <- this type is generated by sqlc
}

func (s *PostgreSQLStorage) AddClient(ctx context.Context, tx *sql.Tx, client core.Client) error {
	q := s.queries.WithTx(tx)
	_, err := q.AddClient(ctx, database.AddClientParams{
		ClientID:     client.ID,
		ClientSecret: client.Secret,
	})
	if err != nil {
		return errors.WithStack(err)
	}
	return nil
}
```
`database.Queries` in turn is generated from the following SQL:

```sql
-- database/queries.sql
-- ...

-- name: AddClient :one
INSERT INTO
	identity.clients (client_id, client_secret)
VALUES
	($1, $2)
RETURNING
	client_id,
	client_secret
;
-- ...
```
The DB schema is governed by `golang-migrate/migrate` and is defined through a set
of SQL files like this:
```sql
-- database/migrations/00002_add-initial-identity-tables.up.sql

CREATE TABLE IF NOT EXISTS identity.users (
	user_id TEXT PRIMARY KEY,
	username TEXT NOT NULL UNIQUE,
	email TEXT NOT NULL UNIQUE,
	password_hash bytea NOT NULL
)
;
-- ...
```
Migrations are applied through a separate container in `docker-compose.yaml` like so:
```yaml
services:
  migrations:
    # migrations
    image: migrate/migrate:v4.18.3
    depends_on:
      postgres:
        condition: service_healthy
    volumes:
      - ../../internal/database/migrations/:/migrations
    environment:
      <<:
        - *db-env # contains the DB env variable
    entrypoint: ["/bin/sh", "-c", "migrate -path=/migrations/ -database $$DB up"]

  wallabago:
    # app
    depends_on:
      postgres:
        condition: service_healthy
      migrations:
        condition: service_completed_successfully
    # ...
```
This compose file is also used by `testcontainers` when running BDD test suite.

Thus the task roughly boils down to:
- rewriting SQL queries to use SQLite syntax (including migrations)
- making so that the app runs the migrations at startup
- generating a new implementation of `database.Queries` with `sqlc`
- making sure that the rough edges of SQLite-PostgreSQL compatibility are sorted out (e.g. we use PG schemas
but SQLite has no such concept)
- in the end the existing BDD harness should still work after we use this new implementation (this is basically
an acceptance criterion).
- cleanup mentions of postgres (compose, makefile etc).

This plan, however, is not the plan that I explicitly gave to the llm and is rather a post-factum summary of the steps
performed and matches well with the trajectory I would take when doing it on my own.

### Step 0: ADR/tests for context
I started with an ADR that introduces the switch from PostgreSQL to SQLite which basically said: 
- postgres is an overkill for our use case
- using sqlite is simpler in terms of operation
- we have sqlc to shield us from a lot of rewrites
- we can simplify the infra by removing the need for docker-compose and test containers
- we dont have any live installations so no need to care about the data
- we need to make sure to use sane setting for SQLite (WAL, strict tables etc)
- we need to make sure the SQL differences between SQLite and Postgres are accounted for (schemas, datetime types etc)

After I created the ADR, I started a fresh Claude Code session (Sonnet 4.5, Thinking On, each edit needs to be explictly 
accepted by me) and asked to read the ADR. It did so and provided the usual praise (god I hate sycophancy), which I disregarded entirely and focused on the possible
critique - and it pointed out some ambiguity with wording around replacing schemas with a naming convention for tables, which I
adressed.

For tasks that require implementing new features I replace this with a BDD test suite which I write using
Gherkin and godog - this serves as the core context for the feature to be implemented, along with automated feedback
about the acceptance state. This task, however, does not involve writing new tests.

Claude has also previously created a `CLAUDE.md` which it uses for its own memory-like purpose. I did not manually edit this
file.

### Step 1: Planning
I asked it to plan out the switch: what needs to be done and in which order. Claude Code has a built-in
way to keep track of TODOs. After some nudging and correction (Claude wanted to embed a sqlite binary at first,
but after asking it why not just use a pure-go sqlite implementation instead and embedding only the sql files
it caved in) the plan was to start with migration rewrite and then continue with sqlc adjacent code (the steps were
more detailed, but the details are omitted here for brevity).

Once I was satisfied with the plan, we proceeded with the execution.

### Step 2: Execution
This is basically the meat and potatoes of this duo interaction, and once you have the necessary setup ready
(context, tests, linters and so on) it is
pretty uniform in shape across different tasks. The execution was basically a loop:
1. Claude offers to edit a file as part of the current todo item (say a migration or `.go` file).
2. I review each edit line by line, as I would do if doing a code review.
3. If I have questions about the code - I ask them before the code gets accepted.
4. If the result of such questioning is me learning a bit of nontrivial info (like specifics of why one has to use `"PRAGMA cache_size = -64000"` in order to set the
cache size to 64MB) - I make sure to include an explainer comment.
5. If the change is downright wrong or needs modifying - I explain why we should not do that and offer an alternative (in this particular
it was barely an issue, but examples include violating architecture constraints).
6. Once I'm satisfied with the change - I accept it.

This was occasionally interspersed with prompts for allowing tool use, like running codegen or tests, which I had to explicitly
allow every time - this allows me to potentially intervene in case Claude starts to enter a death spiral of bad edits and failing tests.
Keeping tight control of the changes grants both understanding of the changes and confidence on the general correctness and
appropriateness.

I repeated this loop until we went through the plan and made sure that the test pass and there is no longer a mention of
postgres in the code (apart from historical ADR which introduced it).

The whole ordeal took less than two hours (with a few stretch breaks), which, I concur, is probably a good deal faster than I'd be able to pull off alone, but definitely
is not 10x speedup. The resulting code looks pretty much indistinguishable from the one I would write (not least due to the fact that
all Go code is pretty much uniform in style, shape and form), apart from occasiona more-verbose-than-usual comments.
Tests pass, agressive linters make sure the code is idiomatic, manual review prevented obvious degradations in quality,
the change is documented - pretty much everything I'd want from a fellow coworker's code.

### Step 3: Proper attribution
In order to be transparent, I decided to explicitly mark every commit coauthored with Claude as such by including it
in the contributors - this is mainly for attribution in the future in order to know the provenance of the code. And in general for now, at least for personal or toy projects, I practice having the name of the
branch and commits also explicitly include ai (I know thats no the right term, it just looks ok): 
```
ai/feat: Replace PostgreSQL with SQLite
Co-Authored-By: Claude <noreply@anthropic.com>
```
on branch `ai/feat/replace-postgre-with-sqlite`.

This way if SHTF in the future I'll be able to more easily know if the cause was entirely my 
skill issue (when authored solely by me) or lack of care with regards to the use of LLMs.

## Conclusion
"Agentic" coding tools like Claude Code can fit well within the framework of pair programming,
especially when combined with TDD and other good practices. Given a consistent procedure for validation
(of every line written, not just green tests) and an opinionated strong preference for certain architectural constraints for the kinds of code the model generates,
I conclude that it is very much possible to use the currently available coding models in a way that is both
productive in terms of speed and does not increase the amount of tech debt incurred (not more than
regular development does, anyhow).

Although the tests I did were on a rather small scale project in Go, I am confident that similar approach may be taken
with other strongly typed languages when doing backend (types help a lot with constraining the output and with the validation of the resulting code) on
at least a medium scale codebase (few 10s of thousands LoC), although YMMV given potential constraints with context sizes - best
to keep the scope of work contained and not do something like "rewrite this whole project in Rust".

## PS
While writing this I remembered that [there is a linter for Go that allows to verify certain architectural constraints](https://github.com/fe3dback/go-arch-lint) - will
give it a go sometime later.
