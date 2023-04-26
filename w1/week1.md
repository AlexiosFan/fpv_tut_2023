# Week 1

## Introduction
My email address: ge43yeb@mytum.de </br>
Please register yourself for the zulip group of the tutorial that you are participating in.</br>
The link for the group on Wednesday: https://zulip.in.tum.de/#narrow/stream/1626-FPV_Mi-10-12.2C-2-EN </br>
The link for the group on Thursday: https://zulip.in.tum.de/#narrow/stream/1633-FPV_Do-13-15-EN </br>
The notes will be available in my github repository: https://github.com/AlexiosFan/fpv_tut_2023

## Recap of implication.
The true/false table for implication
| A | $\Longrightarrow$ | B | Result |
| --- | --- | --- | --- |
| T | $\Longrightarrow$ | T | $\equiv$ >!T!< |
| T | $\Longrightarrow$ | F | $\equiv$ >!F!< |
| F | $\Longrightarrow$ | T | $\equiv$ >!T!< |
| F | $\Longrightarrow$ | F | $\equiv$ >!T!< |

When A and B are both T or F, the result is trivial. But can you explain the result on **line 3**?

A few useful logical equalities. </br>
$A \Longrightarrow B \equiv \neg A \lor B$ <br>
$x = a \equiv x \leq a \land x \geq a$ <br>
$x \not= a \equiv x > a \lor x < a$ </br>
You can represent all the relations of integers( and natural numbers) only with $\leq$

## Assertions
Not an official definition: </br>
Imagine that you are executing a java program. After each line of code is executed, the abstract state $\sigma$ of the program will also be changed. The assertions check the property of the states.
An example of an imperative language:
```java
// sigma_0
int x = 1;
// sigma_1
x = x + 1;
// sigma_2
```
What are the $\sigma_0, \sigma_1, \sigma_2$ and which **assertions** hold at this positions? </br>
Which operations change the state, and which don't?



## The strong and the weak
![graph](w1_image1.svg)

Consider the following questions at the program point $C$. </br>
1. When annotating the control flow graph, can you say that one of the given assertions is "better" than the others?
(Hint: Think about implication)
2. Can you arrange the given assertions in a meaningful order?
>!Algorithmic!<
3. How can you define a stronger than relation formally? </br>
>! If A implies B then we say A is stronger than B. If an A cannot be implied by any other assertions, then it is the strongest assertion !<
4. How do $true$ and $false$ fit in and what is their meaning as an assertion? </br>
>! false implies everything, true can be implied by any other assertions, so false is the always the strongest and true is always the weakest assertions. This is also meaningful in context of a computer program. Assert(True) is always not problem, and Assert(False) will always fail. !<
5. What are the strongest assertions that still hold at $A$, $B$ and $C$?
>!Algorithmic!<

## Strongest post-conditions
After the execution of a line of code, the abstract state of a program may be changed. We call the strongest assertion after this line of code the **strongest post-condition**. Here we exclude $false$, unless there is no other **strongest post-condition**