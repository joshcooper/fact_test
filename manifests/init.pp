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

  ].each |String $value| {
    notify { "fact ${value}":
      message => "${facts[$value]}"
    }
  }
}
