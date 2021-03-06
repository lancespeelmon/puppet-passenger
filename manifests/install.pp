class passenger::install {
  case $::osfamily {
    RedHat, Linux: {
      include passenger::install::redhat
    }
    Debian: {
      include passenger::install::debian
    }
    default: {
      fail("${::hostname}: This module does not support operatingsystem ${::osfamily}")
    }
  }
}
