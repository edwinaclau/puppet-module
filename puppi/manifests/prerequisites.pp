# Class puppi::prerequisites
#
# This class provides commands and tools needed for full Puppi
# functionality. Since you might already have these package
# resources in your modules, to avoid conflicts you may decide
# to include the needed packages somewhere else and avoid the
# direct inclusion of puppi::prerequisites
#
class puppi::prerequisites {

  package { 'curl': ensure => present, }
  package { 'unzip': ensure => present, }

  # These are based on Example42 modules
  include rsync::client
  include nagios::plugins
  include mailx

}
