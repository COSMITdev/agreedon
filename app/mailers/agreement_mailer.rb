class AgreementMailer < ApplicationMailer
  def send_agreement(agreement)
    @agreement = agreement
    @members = agreement.roles
    pdf = WickedPdf.new.pdf_from_string(
            render_to_string(pdf: 'agreement',
                             template: 'agreement/export.pdf.erb',
                             layout: 'pdf.html.erb',
                             locals: { agreement: @agreement }))

    attachments["agreement.pdf"] = pdf
    emails = @members.pluck(:email).join(',')
    mail to: emails, subject: 'Agreement From GetAgreeOn!'
  end
end
