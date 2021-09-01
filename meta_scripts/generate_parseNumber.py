from lib import *

def generate(n):
    s1 = seq('d{i}', n)
    s2 = seq('({d{i}})', n, 2)
    return f'#parseNumber.{n}({s1}) ({10**(n-1)} * {{parseDigit({{d1}})}} + {{parseNumber.{n-1}({s2})}})'

for i in range(2, 6):
    print(generate(i))
