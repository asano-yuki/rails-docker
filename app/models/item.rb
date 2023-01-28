class Item < ApplicationRecord
  after_validation :after_valid_message
  before_validation :before_valid_message
  after_create :after_create_message
  before_create :before_create_message
  after_save :after_save_message
  before_save :before_save_message
  around_create :around_create_message
  around_save :around_save_message
  around_update :around_update_message

  private

  def after_save_message
    puts "save終了です"
  end 

  def after_create_message
    puts "create終了です"
  end

  def after_update_message
    puts "update終了です"
  end

  def after_valid_message
    puts "バリデーション終了です"
  end

  def before_valid_message
    puts "バリデーション開始です"
  end

  def before_update_message
    puts "update開始です"
  end

  def before_save_message
    puts "save開始です"
  end

  def before_create_message
    puts "create開始です"
  end

  def around_save_message
    puts "around save開始です"
    yield
    puts "around save終了です"
  end

  def around_create_message
    puts "around create開始です"
    yield
    puts "around create終了です"
  end

  def around_update_message
    puts "around update更新です"
    yield
    puts "around update終了です"
  end
end
