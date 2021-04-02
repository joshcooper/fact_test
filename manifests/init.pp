class fact_test {
  [
    'dotcustom.array',
    'dotcustom.hash',
    'dotcustom.string',
    'dotcustom.symbol',

    'dotcustom.aggregate.flat',
    'dotcustom.aggregate.structured',

    'dotdata.flat',
    'dotdata.json',
    'dotdata.yaml',

    'dotexe.flat',
    'dotexe.json',
    'dotexe.yaml',

  ].each |String $name| {
    $path = $name.split('[.]') # escaped literal dot
    $value = $facts.dig(*($path))

    notify { "fact ${name}":
      message => "$value"
    }
  }
}
