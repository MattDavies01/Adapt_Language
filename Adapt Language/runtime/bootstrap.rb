Constants = {}

Constants['Class']  = AdaptClass.new
Constants['Class'].runtime_class = Constants['Class']
Constants['Object'] = AdaptClass.new
Constants['Number'] = AdaptClass.new
Constants['String'] = AdaptClass.new

root_self = Constants['Object'].new
RootContext = Context.new(root_self)

Constants['TrueClass']  = AdaptClass.new
Constants['FalseClass'] = AdaptClass.new
Constants['NilClass']   = AdaptClass.new

Constants['true']  = Constants['TrueClass'].new_with_value(true)
Constants['false'] = Constants['FalseClass'].new_with_value(false)
Constants['nil']   = Constants['NilClass'].new_with_value(nil)

Constants['Class'].def :new do |receiver, arguments|
  receiver.new
end

Constants['Object'].def :print do |receiver, arguments|
  puts arguments.first.ruby_value
  Constants['nil']
end

Constants['Number'].def :+ do |receiver, arguments|
  result = arguments.reduce(0) { |sum, arg| sum + arg.ruby_value }
  Constants['Number'].new_with_value(receiver.ruby_value + result)
end