Facter.add('dotcustom.aggregate.flat', :type => :aggregate) do
  chunk :first do
    '1'
  end
  chunk :second do
    '2'
  end
  aggregate do |chunks|
    result = ''
    chunks.each_value do |str|
      result += str
    end
    result
  end
end
