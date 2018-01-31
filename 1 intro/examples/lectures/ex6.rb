# Arrays

a = [ 1, 'cat', 3.14 ]
p a[0]

a[2] = nil
p a

a = ['ant', 'bee', 'cat', 'dog', 'elk']
p a[0]
p a[3]

a = %w{ ant bee cat dog elk }
p a

a = [45, 3, 19, 8]
b = ['sam', 'max', 56, 98.9, 3, 10, 'jill']
p (a + b).join(' ')
p "#{a[2]} #{b[4]} #{b[-2]}"

p a.sort.join(' ')

a << 57 << 9 << 'phil'
p a.join(' ')

a.pop
p a.sort!.join(' ')
p a

a << 'phil'

p a.shift

p a.delete('phil')
p a.delete_at(4)
p a

a = []
a = Array.new
