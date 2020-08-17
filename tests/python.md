---
title: "Python"
---

```python
def mkword(w, b):
    """ Documentation """
    if not w: return []

    c,w = w[0],w[1:]
    for i in range(len(b)):
        if c in b[i]:
            m = mkword(w, b[0:i] + b[i+1:])
            # a comment
            testbool = True
            if m != None: return [b[i]] + m

def abc(w, blk):
    return mkword(w.upper(), [a.upper() for a in blk])

def dump_args(func):
    "This decorator dumps out the arguments passed to a function before calling it."
    argnames = func.func_code.co_varnames[:func.func_code.co_argcount]
    fname = func.func_name
    def echo_func(*args,**kwargs):
        print fname, ":", ', '.join(
            '%s=%r' % entry
            for entry in zip(argnames,args) + kwargs.items())
        return func(*args, **kwargs)
    return echo_func

@dump_args
def f1(a,b,c):
    print a + b + c

blocks = 'BO XK DQ CP NA GT RE TG QD FS JW HU VI AN OB ER FS LY PC ZM'.split()

for w in ", A, bark, book, treat, common, SQUAD, conFUsEd".split(', '):
    print('\'' + w + '\'' + ' ->', abc(w, blocks))

```