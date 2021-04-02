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
    notify { "fact ${name}":
      message => "${facts[$name]}"
    }
  }
}
