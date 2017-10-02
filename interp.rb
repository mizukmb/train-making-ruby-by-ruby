require 'minruby'

def evaluate(tree)
  case tree[0]
  when 'lit'
    tree[1]
  when '+'
    evaluate(tree[1]) + evaluate(tree[2])
  when '-'
    evaluate(tree[1]) - evaluate(tree[2])
  when '*'
    evaluate(tree[1]) * evaluate(tree[2])
  when '/'
    evaluate(tree[1]) / evaluate(tree[2])
  when 'func_call'
    p evaluate(tree[2])
  when 'stmts'
    i = 1
    last = nil
    while tree[i] != nil
      last = evaluate(tree[i])
      i = i + 1
    end

    last
  when 'var_assign'

  end
end

str = minruby_load

tree = minruby_parse(str)

evaluate(tree)
