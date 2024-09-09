require_relative 'lib/linked_list'

list = Linked_List.new
list.append('A')
list.append('B')
list.append('C')
list.append('D')
list.append('E')
list.append('F')

list.prepend('1')
list.prepend('2')
list.prepend('3')
list.prepend('4')
list.prepend('5')

# list.pop
list.to_s
# puts list.size
# puts list.tail.value
# puts list.at(5).value
# puts list.contains?('x')
# puts list.find('x')
