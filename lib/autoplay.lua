-- automatically play when path changes
mp.observe_property('path', 'string', function(_, value)
  if value and mp.get_property('pause') == 'yes' then
    mp.command('set pause no')
  end
end)
