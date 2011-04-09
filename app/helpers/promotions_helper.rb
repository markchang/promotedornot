module PromotionsHelper
  def promotion_status_text( promotion )
    if promotion.status == "pending"
      "is up for"
    elsif promotion.status == "yes"
      "got promoted to"
    elsif promotion.status == "no"
      "was denied promotion to"
    else
      "is up for"
    end
  end
  
  def promotion_yes_no_pending( promotion )
    if promotion.status == "pending"
      "PENDING"
    elsif promotion.status == "yes"
      "YES"
    elsif promotion.status == "no"
      "NO"
    else
      "PENDING"
    end
  end
end
