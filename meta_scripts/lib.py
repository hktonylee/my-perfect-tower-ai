
def seq(template, n, start=1, join=', '):
    return join.join(template.replace('{i}', str(i)) for i in range(start, n + 1))

def seq2(template, n, start=1, join=', '):
    return join.join(template(i) for i in range(start, n + 1))
