---
title: If I were Chuck Noland in Cast Away...
author: R package build
date: '2021-04-14'
slug: []
categories:
  - Math Life
tags:
  - probability
  - math in movie
thumbnail: videos/castaway_math.mp4
---

One of my all time favorite movies is Tom Hank's Cast Away.

In the movie, there was a scene in which Tom Hanks did some math about how big the search area could be for his crashed plane.

His FedEx plane flew from Memphis for 11.5 hours at a constant speed of 475 mile per hour. If this was simply the case, Tom Hank's role, Chuck Noland, would have been rescued "immediately" and get back to his business schedule, and the movie would have ended. A twist to the story is that his plane flew out of the route for about an hour which was about 400 miles. Search party's job was to start looking from where they thought Chuck's plane crashed, and they would take that location as the center of a circle of search.

So, to actually reach the island where Chuck Noland was stranded, 400 miles away from that search circle's center, the search party would need to search for $$
 \pi * 400^{2} \approx 502,400 miles^{2}
$$ and as it was said by Chuck Noland in the movie, the search area would be twice as large as Texas.

Chuck Noland was absolutely correct about his math, and the way he framed his stranded situation by saying the search area would be twice as large as Texas really left no hope for him.

In the movie, eventually he set off with his handcrafted "sail boat" into somewhere, or nowhere in the ocean. Thank God, he was blessed and got rescued by a cargo ship. Chance of this happening was absolutely ridiculously small, might as well just call it "zero". 

But it happened. God sent him a cargo ship out of nowhere, God led him to sail in that direction.

> Sometimes I imagine myself stranded in an island, in a stormy night, I was sitting in a cave with no light or hope in my eyes, and all of a sudden, I heard God talking to me, "son, tomorrow morning, go get your boat and leave here, there will be a cargo ship waiting for you, and it will be within 50 miles of you now"

> Then I start my math calculations on the rock, if that cargo ship was to randomly show up in my 50 miles range, that being said, my current location serves as the center of a circle whose radius is 50 miles, and a cargo ship is randomly located within this circle. Question is, how far away could that cargo ship be?

Here is the math:

Let \\(X \\) be a random variable representing the distance between you and the cargo ship. Then I can simply figure out the expectation of \\(X \\), and use that value to determine if I should risk the sailing part (I dont know how to swim).

Well, to calculate the expectation of \\(X \\), I will need its probability density function, say \\(f(x) \\), then the \\(E(X) = \int_0^{R} x f(x) dx \\), in which \\(R \\) represents the radius of the circle.

How do I know \\(f(x) \\)? well, from probability course we took, we know that \\(F(x) = P(X \leq x) \\), and Probability Density Function \\(f(x) \\) can be derived from Cumulative Distribution Function \\(F(X) \\) by taking its derivative.

I have \\(F(x) = P(X \leq x) \\), but what is \\(P(X \leq x) \\)?

\\(P(X \leq x) = P(\\)cargo ship in within your circle) \\(= \frac {\pi x^{2}}{\pi R^{2}} = \frac {x^{2}}{R^{2}} \\) 

Now I have \\(F(x) \\), \\(f(x) = \frac {d}{dx} F(x) = \frac {2x}{R^{2}} \\).

So then, \\(E(X) = \int_0^{R} x f(x) dx = \int_0^{R} x \frac {2x}{R^{2}} = \frac {2}{3}R \\)

God has told me the radius would be 50 miles, then the expected distance between me and the cargo ship would be \\(\frac {2}{3}*50 \approx 33.33  miles \\)

So, God, thanks but no, I would rather you send someone to teach me how to swim first.





