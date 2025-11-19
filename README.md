# Benford’s Law Analysis in R
A statistical examination of naturally occurring numerical data using Benford distributions
This project applies Benford’s Law to a dataset using R inside a Jupyter Notebook. The notebook extracts leading digits, computes expected Benford probabilities, compares them to observed frequencies, and visualizes how well the dataset conforms to the law. The project also includes experiments using multiple leading digits to observe how the distribution changes as more digits are analyzed.
# What Is Benford’s Law?
Benford’s Law describes the distribution of leading digits in many naturally occurring datasets.
Instead of leading digits being uniformly distributed (1–9 each appearing ~11% of the time), Benford’s Law states:
1 appears as the first digit about 30.1% of the time
2 appears ~17.6%
3 appears ~12.5%
…
9 appears only ~4.6%
This counter-intuitive pattern appears in datasets that:
vary across several orders of magnitude
grow exponentially or multiplicatively
are not artificially bounded or manipulated
Examples: financial records, population statistics, energy consumption, physical constants, and more.
# 📐 The Mathematics Behind Benford’s Law
For a given digit d, Benford’s Law states that the probability of d being the first digit is:
P(d)=log⁡10(1+1/d) so P(1)=log10(1+ 1/1 ) = 10log2=0.301 p(9)=log10(1+1/9)=log10(1.11)=0.046

# 🔧 How the Notebook "Trains" the Model
While Benford’s Law is not "trained" like machine learning, your notebook derives empirical frequencies from your dataset and compares them to the theoretical Benford distribution.

# 📊 The Dataset You Tested
From your benford.ipynb, you are testing Benford’s Law on:
The numeric values loaded into your vector 
Your notebook validates whether the dataset behaves like a typical real-world collection of numbers or if it has characteristics suggesting artificial structure or manipulation.

1 Digit (Standard Benford Test)
Tests only the first digit.
Follows the classic logarithmic distribution.
Most stable and widely used.
2 Digits
Tests leading two-digit combinations (10–99).
Theoretical probabilities now follow:
p(d) =log10(1+1/d)
…but with d representing two-digit numbers.
Distribution becomes flatter but still non-uniform.
Useful for deeper fraud detection.
3+ Digits
Approaches a smoother and more uniform distribution.
Plots begin to lose the sharp curvature found in first-digit Benford.
Good for advanced diagnostic checks, not always necessary.
# ✔️ How This Affects Plots
Changing the number of digits changes:
The curve shape
1 digit → steep curve (1 is dominant)
2 digits → softer curve
3 digits → nearly flat
Expected frequencies
Bar alignment between observed and expected
Overall sensitivity to anomalies
More digits = more precise detection but more noise if the dataset is small.
