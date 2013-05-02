︠b69f24e7-06b3-4aba-abc4-4d1e47ae02b6︠
'''
Sean Kim
Math 480
Homework 4
'''

# 1
'''
f(x) = x^2 - 3x + 3
We notice that this quadratic polynomial is not factorable,
so f(x) will not be the product of two numbers (x - a) * ( x - b).
For smaller x's, it's trivial that f(x) will not be prime,
but for large x's, f(x) will become prime, especially when adding 3 at the end.
It's also noticeable that varying a and b will lead odd multiples of primes.
At higher numbers, the polynomial is able to generate an infinite number of primes
since there is a higher ratio of primes to nonprimes.
'''

# f(2013)
a1 = 2013**2 - 3 * 2013 + 3; a1
a2 = 3013**2 - 3 * 3013 + 3; a2
a3 = 93747693482487**2 - 3 * 93747693482487 + 3; a3
︡2eee3b31-3475-4b93-9656-3388cbfbb69d︡{"stdout":"'\\nSean Kim\\nMath 480\\nHomework 4\\n'"}︡{"stdout":"\n"}︡{"stdout":"\"\\nf(x) = x^2 - 3x + 3\\nWe notice that this quadratic polynomial is not factorable,\\nso f(x) will not be the product of two numbers (x - a) * ( x - b).\\nFor smaller x's, it's trivial that f(x) will not be prime,\\nbut for large x's, f(x) will become prime, especially when adding 3 at the end.\\nIt's also noticeable that varying a and b will lead odd multiples of primes.\\nAt higher numbers, the polynomial is able to generate an infinite number of primes\\nsince there is a higher ratio of primes to nonprimes.\\n\""}︡{"stdout":"\n"}︡{"stdout":"4046133"}︡{"stdout":"\n"}︡{"stdout":"9069133"}︡{"stdout":"\n"}︡{"stdout":"8788630033286054294695257711"}︡{"stdout":"\n"}︡
︠fe2ad991-1ef0-4fbd-8d50-357f6dace38c︠
# 2
def findprimes(n):
    d = {x: 1 for x in range(2, n+1)}
    for p in range(2,n + 1):
        for i in range(p,(n/p) + 1):
           d[i*p] = 0

    primes = []
    for key in d.keys():
        if d[key] == 1:
            primes.append(key)

    return primes
︡3d4dbc1e-7a47-46aa-bb93-c915a2a2a6f8︡
︠795d35a3-4364-44dd-8c8b-e62d38b7f6ff︠
l = findprimes(10000000)
︡4bf6ffd7-f99f-4e2f-ae46-1deb73f2496c︡
︠e60ba851-2766-45cd-a77f-f6b47aeb99e7︠
s1 = []
for x in range(len(l)):
    s1.append(Mod(l[x], 15))

stats.TimeSeries(s1).plot_histogram()
︡bd07f31e-45be-4909-91c4-18af0b4b5454︡
︠615cbf26-48c9-4275-934f-df3ed007e79br︠
s2 = []
for x in range(len(l)):
    s2.append(Mod(l[x], 7))

stats.TimeSeries(s2).plot_histogram()
︡fc5449e3-a2d9-4067-81cd-b70765cf8146︡
︠5564f904-5c4e-4612-8a18-8b92a1db574f︠
s3 = []
for x in range(len(l)):
    s3.append(Mod(l[x], 21))

stats.TimeSeries(s3).plot_histogram()
︡f59639ca-7fb3-42f3-aaad-bbab9d8dcc7b︡
︠4d10fd8e-73da-49e7-bd62-1d3a613d891e︠
'''
The histograms show symmetry along the midpoint (n / 2).
If n is prime, then the histogram displays all the values
because all elements of a prime order group are also generators of that group.
If n is nonprime, all the values of the histogram are shown expect for the factors and multiples of n.
'''
︡0a399c85-f8ee-4c54-b723-a754bf00452b︡
︠6d838ec7-d276-4c9a-97c9-0164234e60f2︠
# 3
Mod(372806624339965 , 37 + 10^15).rational_reconstruction()
︡b45b4e59-8c65-468a-8758-0ab13f797c68︡
︠12a3cdb7-b802-4787-ae4f-6b68a7c49715︠

