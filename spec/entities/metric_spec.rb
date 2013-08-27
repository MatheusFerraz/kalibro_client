# This file is part of KalibroEntities
# Copyright (C) 2013  it's respectives authors (please see the AUTHORS file)
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

require 'spec_helper'

describe KalibroEntities::Entities::Metric do
  describe 'languages' do
    subject {FactoryGirl.build(:metric)}

    it 'should return the value of the language attribute' do
      subject.languages.should eq(["Java"])
    end
  end

  describe 'languages=' do
    it 'should set the value of the attribute language' do
      subject.languages = ["Java", "C"]
      subject.languages.should eq(["Java", "C"])
    end
  end

  describe 'language=' do
    it 'should set convert the value to an array of objects' do
      KalibroEntities::Entities::Metric.expects(:to_objects_array).returns(["Java"])
      subject.language = "Java"
    end
  end
end