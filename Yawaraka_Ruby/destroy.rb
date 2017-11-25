str1 = str2 = "paperboy"
str1 += "&co."
str2 << "&co."

=begin
irb(main):001:0> str1 = str2 = "paperboy"
=> "paperboy"
irb(main):002:0> str1 += "&co."
=> "paperboy&co."
irb(main):003:0> str2 << "&co."
=> "paperboy&co."
irb(main):004:0> str1 == str2
=> true
irb(main):005:0> str1.object_id == str2.object_id
=> false

この違いはobject_idが違う。


=end
