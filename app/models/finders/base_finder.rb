#  Copyright (c) 2008-2017, Puzzle ITC GmbH. This file is part of
#  Cryptopus and licensed under the Affero General Public License version 3 or later.
#  See the COPYING file at the top-level directory or at
#  https://github.com/puzzle/cryptopus.

class Finders::BaseFinder
  def initialize(records, term)
    @records = records
    @term = term
  end

  def apply
    raise 'implement in subclass'
  end
end
