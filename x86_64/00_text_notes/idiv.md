# Division terminology: 

```latex

The division formula:

\[
\text{Dividend} \div \text{Divisor} = \text{Quotient} + \frac{\text{Remainder}}{\text{Divisor}}
\]

or using symbols:

\[
D \div d = q + \frac{r}{d}
\]

where:  
- \(D\) = Dividend  
- \(d\) = Divisor  
- \(q\) = Quotient  
- \(r\) = Remainder


```

- Note this appear with proper above/bottom in a better previewer then neovim
$$
\frac{\text{Dividend}}{\text{Divisor}} = \text{Quotient} + \frac{\text{Remainder}}{\text{Divisor}}
$$

The division formula is $$ \text{Dividend} / \text{Divisor} = \text{Quotient} + \text{Remainder} / \text{Divisor} $$.

Or written in another form
$$\text{Dividend} = \text{Quotient}*\text{Divisor} + \text{reminder}$$


Or: 
```python
Dividend = top
Divisor = bottom

quotient = result
reminder = reminder # duh/trivial to remember

```



# IDIV Operation

## Three forms 
- Unsigned divide ax by r/m8, al = quotient, ah = reminder
- unsigned divide edx: eax by r/m32. eax = quotient. edx = reminder
- unsigned divide rdx:rax by r/m64, rax = quotient. rdx = reminder
