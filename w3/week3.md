# Week3

## A Predicate logic
A brief introduction to predicate logic is now available in my github repo.
If you find yourself lacking the related knowledge, you may take a look and learn
some new stuff. A finished version will also be uploaded by the ÜL.

## Minijava 2.0
In this exercise we have defined a few new commands in MiniJava. Our task is finding
the weakest preconditions of the new commands.

Here is a list of the weakest preconditions known from the lecture:
- **WP**⟦;⟧ (*B*) $\equiv$ *B*
- **WP**⟦x = e;⟧ (*B*) $\equiv$ $B[e/x]$, substitute *x* for *e* in *B*
- **WP**⟦x = read();⟧ (*B*) $\equiv$ $\forall x. B$
- **WP**⟦write(e);⟧ (*B*) $\equiv$ *B*, IO operations have no effects on the state.
- **WP**⟦condition;⟧ ($B_1, B_2$) $\equiv condition \Longrightarrow B_1 \land \neg condition \Longrightarrow B_2$

Now let's take a look the exercise.
1. **rand x** </br>
Is there any known command that assigns a random value to **x**?
2. **x = either e1, e2..., en** </br>
Can you transform the command into an *if-then-else* statement and then a logical formula?
3. **x = e in a, b** </br>
Can you transform the command into an *if-then-else* statement and then a logical formula?
4. **stop** </br>
Is there anything in a control flow diagram that has similar behaviour to the **stop** command?

## Loop invariants, Recap
1. What is a loop invariant? 
```quote
In computer science, a loop invariant is a property of a program loop that is true before (and after) each iteration. 

Source: Wikipedia
```
2. What are some trivial examples of loop invariant?
  - >!assert(true)!<
  - ```c
    int a, b = 0;
    for (int i = 0; i < 100; i++) {
        a += 2;
    }
    ```
    1. Values that are not changed inside a loop? <br>
     >!b = 0!<
    2. Values that are changed inside a loop? <br>
     >!0 <= i <= 100 & a = 2i!<

## Loop invariants, Exercise
1. Discuss the problem that arises when computing weakest preconditions to prove $Z$.
>!We cannot compute the WP inside the loop!!<
2. How can you use weakest preconditions to prove $Z$ anyway?
Recall: $A \Longrightarrow WP$. Do we always need the weakest preconditions?
>!Local consistency is enough, hence we can forge a valid assertion manually!<
3. Now let's try to show the local consistency of the program and answer the following questions:
   - >!The invariant has to express precise information about this variable as well.!<
   - too weak: >!Not possible to show the local consistency!<
   - too strong: >!Not possible to derive true at the beginning of the programme!<
   - A lowerbound and/or an upperbound: >!Usually the loop invariant must not be less expressive about the proof goal's variables than the goal itself.!<
   
## Two b, or Not Two b
The easy part: algorithmic
The hard part: What is the loop invariant? </br>
Hint 1: in each iteration of the loop, the behaviour is different from the 
**previous** and the **next** iteration. Do you find a way to represent this feature? </br>
Hint 2: How is the value of **b** changing throughout the program?