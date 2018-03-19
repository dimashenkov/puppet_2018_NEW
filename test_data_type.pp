$test_var = $facts

case $test_var {
  Hash:{ 
    notify{"var is hash ":}
  }
  String: {
    notify{"var is string ":}

  }
  Default:{
    notify{"var is list":}
  }
}
