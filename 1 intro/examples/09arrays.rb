a = [ 1, 'cat', 3.14 ] # array with three elements
# access the first element
p a[0]
# set the second element
a[2] = nil
# dump out the array
p a

a = ['ant', 'bee', 'cat', 'dog', 'elk']
p a[0]
p a[3]
# this is the same as:
a = %w{ ant bee cat dog elk }
p a[0]
p a[3]

a = [ 45, 3, 19, 8 ]
b = [ 'sam', 'max', 56, 98.9, 3, 10, 'jill' ]
p (a + b).join(' '), "\n"
p a[2], " ", b[4], " ", b[-2], "\n"
p a.sort.join(' '), "\n"
a << 57 << 9 << 'phil'
p "A: ", a.join(' '), "\n"

b << 'alex' << 48 << 220
p "B: ", b.join(' '), "\n"
p "pop: ", b.pop, "\n"
p "shift: ", b.shift, "\n"
p "C: ", b.join(' '), "\n"

b.delete_at(2)
b.delete('alex')
p "D: ", b.join(' '), "\n"
