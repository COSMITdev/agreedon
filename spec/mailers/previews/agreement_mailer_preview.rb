# Preview all emails at http://localhost:3000/rails/mailers/agreement_mailer
class AgreementMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/agreement_mailer/send_agreement
  def send_agreement
    @agreement = Agreement.new
    AgreementMailer.send_agreement(@agreement)
  end
end
