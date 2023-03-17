class AssignMailer < ApplicationMailer
  default from: 'from@example.com'

  def assign_mail(email, password)
    @email = email
    @password = password
    mail to: @email, subject: I18n.t('views.messages.complete_registration')
  end

  def owner_mail(email, name)
    @email = email
    @team = name
    mail to: @email, subject: 'オーナー権限が譲渡されました'
  end

  def agenda_mail(email)
    @email = email
    mail to: @email, subject: 'アジェンダが削除されました'
  end
end
