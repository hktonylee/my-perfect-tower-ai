
def seq(template, n, start=1):
    return ', '.join(template.replace('{i}', str(i)) for i in range(start, n + 1))
