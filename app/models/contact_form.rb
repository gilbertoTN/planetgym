
class ContactForm < MailForm::Base
  attribute :email,:validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :name, :validate => :true

  def headers
    {
      :subject => "Mensaje de la pagina de planet gym",
      :to => "contacto@planetgym.mx",
      :from => %("#{name}" <#{email}>)
    }
  end


end
