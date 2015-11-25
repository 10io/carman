class Car < ActiveRecord::Base
  self.inheritance_column = nil # so we can use `type` column as an enum

  enum :type => %i(sedan luxury offroad),
       :engine => %i(petrol electric),
       :head_lamp => %i(halogen xenon led laser),
       :traction => %i(2WD 4WD)

  validates :brand, :model, :year, :presence => true

  validate :check_engine
  validate :check_head_lamp
  validate :check_traction
  validate :check_blind_spot_detection
  validate :check_range
  validate :check_mpg
  validate :check_horsepower

  private

  def check_engine
    return if !electric? || luxury?
    errors.add(:engine, "#{engine} is only available for luxury cars")
  end

  def check_range
    return if range.blank? || electric?
    errors.add(:range, "is only available for electric cars")
  end

  def check_mpg
    return if mpg.blank? || !electric?
    errors.add(:mpg, "must be empty for electric cars")
  end

  def check_horsepower
    return if horsepower.blank? || !electric?
    errors.add(:horsepower, "must be empty for electric cars")
  end

  def check_head_lamp
    return if halogen? || luxury?
    errors.add(:head_lamp, "#{head_lamp} is only available for luxury cars")
  end

  def check_traction
    return if !send("4WD?") || offroad?
    errors.add(:traction, " #{traction} is only available for offroad cars")
  end

  def check_blind_spot_detection
    return if !blind_spot_detection || luxury?
    errors.add(:blind_spot_detection, "is only available for luxury cars")
  end

  def check_suv
    return if !suv || sedan?
    errors.add(:suv, "is only available for sedan cars")
  end
end
