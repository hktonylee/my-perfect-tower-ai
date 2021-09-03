from lib import *

def generate(n):
    s1 = seq2(lambda i: f'cond{i}, label{i}', n, join=', \\\n    ')
    s2 = seq2(lambda i: f'({{cond{i}}}), ({{label{i}}})', n, 2, join=', \\\n    ')
    s3 = seq2(lambda i: f'({{cond{i}}})', n, join=' || ')
    return f'''
#gotoSwitch.{n}( \\
    {s1} \\
) goto({{switch.{n}(int, ({{label1}}), \\
    {s2} \\
)}}, \\
    {s3} \\
)
'''

#double.min.6(a, b, c, d, e, f) double.min(({a}), double.min(({b}), double.min(({c}), double.min(({d}), double.min(({e}), ({f}))))))

for i in range(2, 11):
    print(generate(i))
