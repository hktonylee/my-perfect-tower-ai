from lib import *

def generate(n):
    s1 = seq2(lambda i: f'cond{i}, label{i}', n, join=', \\\n    ')
    s2 = seq2(lambda i: f'({{cond{i}}}), ({{label{i}}})', n, 2, join=', \\\n        ')
    return f'''
#switch.{n}(type, else, \\
    {s1} \\
) {{switch.1({{type}}, \\
    {{switch.{n - 1}({{type}}, ({{else}}), \\
        {s2} \\
    )}}, \\
    ({{cond1}}), ({{value1}}) \\
)}}
'''


print('''
#switch.1(type, else, \\
    cond1, value1 \\
) ternary.{type}(({cond1}), {value1}, {else})
''')


for i in range(2, 11):
    print(generate(i))
