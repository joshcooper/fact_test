Facter.add('dotcustom.aggregate.structured', :type => :aggregate) do
  chunk :first do
    ['1']
  end
  chunk :second do
    ['2']
  end
end
