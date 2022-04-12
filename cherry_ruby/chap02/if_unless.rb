status = 'erro'
if status != 'ok'
    puts '何か異常があります'
end

status = 'error'
unless status == 'ok'
    puts '何か異常があります'
else
    puts '正常です'
end