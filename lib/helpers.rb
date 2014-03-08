def link_to_unless_current(text, target, attributes={})
  # Find path
  path = target.is_a?(String) ? target : target.path

  if @item_rep && @item_rep.path == path
    # Create message
    "<a class=\"active\" href=\"#{path}\">#{text}</a>"
  else
    link_to(text, target, attributes)
  end
end