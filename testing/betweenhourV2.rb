class BetweenHour
  def isBetweenHour(beginHour, endHour, checkHour)
    # �󂯎�����l�����l���m�F
    if (beginHour.class != Fixnum || endHour.class != Fixnum || checkHour.class != Fixnum)
      raise
    end
    
    # �͈͊O�̒l���w�肵���ꍇ�G���[
    if (beginHour >= 24 || endHour >= 24 || checkHour >= 24 || beginHour < 0 || endHour < 0 || checkHour < 0)
      raise
    end
    
    # �J�n�����ƏI�������������ꍇ�͊܂܂��
    if (beginHour == checkHour && checkHour == endHour)
      return true
    end
    
    # ���Ԃ����[�v�����A���̒���checkHour�����邩�ǂ������m�F���鏈���ɂ���
    until beginHour == endHour
      if (checkHour == beginHour)
        return true
      end
      
      if beginHour >= 23
        beginHour = 23 - beginHour
      else
        beginHour = beginHour + 1
      end
    end
    
    return false
  end
end

