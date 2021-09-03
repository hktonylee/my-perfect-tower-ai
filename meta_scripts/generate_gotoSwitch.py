from lib import *

def generate(n):
    s1 = seq2(lambda i: f'label{i}, cond{i}', n, join=', \\\n    ')
    s2 = seq2(lambda i: f'({{cond{i}}}), ({{label{i}}})', n, 2, join=', \\\n    ')
    s3 = seq2(lambda i: f'({{cond{i}}})', n, join=' || ')
    return f'''
#gotoSwitch.{n}( \\
    {s1} \\
) gotoif({{switch.{n - 1}(int, ({{label1}}), \\
    {s2} \\
)}}, \\
    {s3} \\
)
'''


print('''
#gotoSwitch.1( \\
    label1, cond1 \\
) gotoif({switch.1(int, ({label1}), \\
    ({cond1}), ({label1}) \\
)}, \\
    ({cond1}) \\
)
''')


for i in range(2, 11):
    print(generate(i))
