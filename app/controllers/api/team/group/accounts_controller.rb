# encoding: utf-8

#  Copyright (c) 2008-2016, Puzzle ITC GmbH. This file is part of
#  Cryptopus and licensed under the Affero General Public License version 3 or later.
#  See the COPYING file at the top-level directory or at
#  https://github.com/puzzle/cryptopus.

class Api::Team::Group::AccountsController < ApiController

  def show
    account = Account.find(params['id'])
    account.decrypt(plaintext_team_password(team))
    render_json account
  end

end
