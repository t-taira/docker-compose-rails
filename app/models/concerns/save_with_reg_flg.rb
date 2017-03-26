module SaveWithRegFlg
  attr_accessor :reg_flg

  def save
    self.reg_flg = true
    super
  end
end
