# Модулі які будуть використані для досягнення багаторазового успадкування
module Budget
  # незважаючи на те, що неможливо створити об'єкти модуля
  # ми можемо використовувати змінні екземпляру (@)
  def current_budget
    @budget
  end

  def set_budget(budget)
    @budget = budget
  end
end

module SpecialAbility
  # автоматично створиться сетер і гетер для змінної екземпляру @ability
  attr_accessor :ability
end