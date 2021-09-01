from lib import *

def generate(n):
    s1 = seq('n{i}', n)
    s2 = seq('({n{i}})', n, 2)
    return f'#double.min.{n}({s1}) double.min(({{n1}}), {{double.min.{n-1}({s2})}})'

#double.min.6(a, b, c, d, e, f) double.min(({a}), double.min(({b}), double.min(({c}), double.min(({d}), double.min(({e}), ({f}))))))

for i in range(2, 11):
    print(generate(i))
