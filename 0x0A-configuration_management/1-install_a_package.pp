# Installing puppet-lint as shown below

package {'puppet-lint':
  ensure   => 'installed',
  provider => 'gem',
}
