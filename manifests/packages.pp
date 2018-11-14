class qe::packages {

  apt::source { 'jessie_backports':
    location => 'http://deb.debian.org/debian',
    release  => 'jessie-backports'
  }

  package {
    'ca-certificates-java':
      ensure => '20161107~bpo8+1'
      ;
    [
      'apt-transport-https',
      'apt',
      'bzr',
      'openssh-client',
      'ca-certificates',
      'curl',
      'debian-goodies',
      'gnupg2',
      'keychain',
      'less',
      'lsb-release',
      'locales',
      'openjdk-8-jdk',
      'openjdk-8-jre-headless',
      'software-properties-common',
      'sudo',
      'netabse',
      'wget'
    ]:
      ensure  => latest,
      require => [
        Apt::Source['jessie_backports'],
        Package['ca-certificates-java']
      ]
      ;
  }

}
