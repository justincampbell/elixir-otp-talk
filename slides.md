autoscale: true
build-lists: true

#[fit] *Elixir & OTP*
#[fit] Microservices Without Pain
## **@justincampbell**

---

#[fit] *Elixir & OTP*
#[fit] Sitting in a tree

---

#[fit] Building $#!+
#[fit] that doesn't break

---

#[fit] Elixir:
#[fit] Erlang that doesn't suck

---

![fit original](http://cl.ly/image/3g3Y0I1W472o/51ea222e06c09abbbaa83905489c9ef69988b8240ddcfe9cd070720ec5dade83.png)
# "Microservices"

---

#[fit] Elixir ~ Erlang

---

# Elixir

* Tools
* Modules
* Functions
* Pattern-Matching

---

# Fibonacci Sequence

## `0 1 1 2 3 5 8 13 21 34 55`

---

#[fit] Processes

---

#[fit] OTP
#[fit] Open Telecom Platform

---

# OTP

* Erlang
* protocol for communication between nodes
* request broker
* Dialyzer (static analysis)
* Mnesia (distributed database server)
* standard lib

---

# GenServer

```elixir
handle_call(message, {from, ref}, state)
handle_cast(message, state)

{:reply, reply, state}
{:reply, reply, state, timeout}
{:reply, reply, state, :hibernate}
{:noreply, state}
{:noreply, state, timeout}
{:noreply, state, :hibernate}
{:stop, reason, reply, state}
{:stop, reason, state}
```

---

# GenServer

```elixir
GenServer.start_link -> init

GenServer.call -> handle_call
GenServer.cast -> handle_cast
```

---

#[fit] Spyfall
#[fit] or something

---

# Services Decision

* Start with a monolith, move to microservices as needed.
* Start with a monolith, stay as a monolith.
* Start with microservices.

> snowsuit.io/issue07.html

---

![fit](http://cl.ly/image/0G3H3K0L1F14/CDR7g6PW0AAgXag.jpg)

^
https://twitter.com/jimfreeze/status/591233264528056320

---

# Resources

* elixir-lang.org
* phoenixframework.org
* howistart.org/posts/elixir
* learnyousomeerlang.com
* elixirsips.com
* phoenixscreencasts.org
