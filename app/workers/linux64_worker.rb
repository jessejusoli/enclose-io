# Copyright (c) 2016-2017 Enclose.IO contributors
# 
# This file is part of Enclose.IO, distributed under the MIT License
# For full terms see the included LICENSE file

class Linux64Worker
  include Sidekiq::Worker
  sidekiq_options queue: 'linux64'

  def perform(id)
    Executable.find(id).compile!
  end
end
