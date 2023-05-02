# Week 2
## Recap of the weakest preconditions
**WP**⟦s⟧ (*B*) is called the weakest precondition for statement *s* and postcondition *B*. A weakest precondition can be implied by any valid precondition. This follows the definition of strength and weakness as in the previous week. <br> 
Here is a recap for the weakest preconditions from the lecture.
- **WP**⟦;⟧ (*B*) $\equiv$ *B*
- **WP**⟦x = e;⟧ (*B*) $\equiv$ $B[e/x]$, substitute *x* for *e* in *B*
- **WP**⟦x = read();⟧ (*B*) $\equiv$ $\forall x. B$
- **WP**⟦write(e);⟧ (*B*) $\equiv$ *B*, IO operations have no effects on the state.
- **WP**⟦condition;⟧ ($B_1, B_2$) $\equiv condition \Longrightarrow B_1 \land \neg condition \Longrightarrow B_2$ 

## Local consistency
An annotation tuple $(A, B, s)$ of the program is called locally consistent iff. <br>
A $\Longrightarrow$ **WP**⟦s⟧(*B*) <br>
For the variant of a condition check <br>
A $\Longrightarrow$ **WP**⟦s⟧($B_1, B_2$)

## Postconditions and preconditions
Difference: Postconditions are derived in the order of program execution. Preconditions are derived by backward analysis, in other words, in a backstrapping approach. 
| - | SP | WP |
| - | - | - |
| Pro | 1. All information contained <br> 2. Intuitive way of thinking | 1. Computation rules easy to define <br> 2. Only necessary information contained. <br> 3. Proof of termination possible |
| Con | 1. Computation rules hard to define <br> 2. Formulae contain unrelated information | Not given by the sample solution, can you think of any? |