module FlashMessagesHelper
  def flash_wrapper_classes(type)
    if %w[alert danger].include?(type)
      'text-red-800 rounded-lg bg-red-50'
    elsif type == 'success'
      'text-green-800 rounded-lg bg-green-50'
    elsif type == 'warning'
      'text-yellow-800 rounded-lg bg-yellow-50'
    else
      'text-blue-800 rounded-lg bg-blue-50'
    end
  end

  def flash_button_classes(type)
    if %w[alert danger].include?(type)
      'bg-red-50 text-red-500 focus:ring-2 focus:ring-red-400 p-1.5 hover:bg-red-200'
    elsif type == 'success'
      'bg-green-50 text-green-500 focus:ring-2 focus:ring-green-400 p-1.5 hover:bg-green-200'
    elsif type == 'warning'
      'bg-yellow-50 text-yellow-500 focus:ring-2 focus:ring-yellow-400 p-1.5 hover:bg-yellow-200'
    else
      'bg-blue-50 text-blue-500 focus:ring-2 focus:ring-blue-400 p-1.5 hover:bg-blue-200'
    end
  end
end