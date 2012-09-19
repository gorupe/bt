class BetweenHour
  # ���鎞��(0���`23��)���A�w�肵�����Ԃ͈͓̔��Ɋ܂܂�邩�ǂ����𒲂ׂ�
  def isBetweenHour(beginHour, endHour, checkHour)
    # �󂯎�����l�����l���m�F
    if (beginHour.class != Fixnum || endHour.class != Fixnum || checkHour.class != Fixnum)
      raise
    end
    
    # 24�ȏ�̒l���w�肵���ꍇ�G���[
    if (beginHour >= 24 || endHour >= 24 || checkHour >= 24)
      raise
    end
    
    # ���t�^�֕ϊ�
    beginHour = Time.gm(0,1,1,beginHour)
    endHour = Time.gm(0,1,1,endHour)
    checkHour = Time.gm(0,1,1,checkHour)
    
    # �J�n�����ƏI�������������ꍇ�͊܂܂��
    if (beginHour == checkHour && checkHour == endHour)
      return true
    end
    
    # �J�n�������I���������傫���ꍇ���ׂ�����
    if (beginHour > endHour)
      endHour = Time.gm(0,1,endHour.day + 1, endHour.hour)
      
      # �J�n���������莞�����傫���ꍇ���ׂ�����
      if (beginHour > checkHour)
        checkHour = Time.gm(0,1,checkHour.day + 1, checkHour.hour)
      end
    end

    # �͈͎w��͊J�n�������܂ݏI�������͊܂܂Ȃ�
    if (beginHour <= checkHour && checkHour < endHour)
      return true
    end
    
    return false
  end
end
