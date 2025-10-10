# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

*NOTE* Instead of creating an 8-bit 2's compliment circuit, we create a 7-bit 2's compliment circuit where the 8th bit acted as the signal to compute the 2's compliment.

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.

  The Half Adder from last lab and Half Subtractor from this lab both use the same logic (XOR) to compute their sums and differences, respectively. The difference lies in the secondary output for each module. In the adder, if the addition of two bits excedes the storage capability of one bit (1+1=1, carry 1), a carry bit is generated and is sent off to be added to the next set of bit addition (Cin). This proccess continues in a chain of adders. In the subtractor, if the subtraction of one bit from another isn't wholely satisfied by the two bits (0-1=1, borrow 1), a borrow bit is generated and set off to be subtracted from the next set of bit subtractions. This process would also continue in a chain of subtractors.
  
### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?

  The end around carry in One's Complement creates a few tricky (and avoidable) situations. First, it creates an odd looping condition where theres a chance that after adding two numbers together, the circuit brings around a second digit to do the whole thing over again (and potentially again and again and again...). It also creates two different carry instances, one for intermediary bit addition and one for the carry-around. Not ideal. Lastly, I imagine when creating a physical circuit, having to loop around the extra digit all the way back to the beginning would create headaches and unnessesary complexity within the circuit design.

### 3 - What is the edge case and problem with Two’s Complement number representation?

