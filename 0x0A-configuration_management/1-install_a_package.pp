#This file install package flask
$package = 'flask'

package { $package:
  ensure   => 'installed',
  version  => '2.1.0',
  provider => 'pip3',
}
