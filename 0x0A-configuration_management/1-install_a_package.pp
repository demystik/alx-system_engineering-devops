$package = 'flask'

package { $package:
  ensure  => 'installed',
  version => '2.1.0'
}
