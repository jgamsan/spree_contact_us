class Spree::ContactUs::ContactsController < Spree::BaseController
  layout "contenido"
  def create
    @contact = Spree::ContactUs::Contact.new(params[:contact_us_contact])

    if @contact.save
      redirect_to('/', :notice => t('spree.contact_us.notices.success'))
    else
      render :new
    end
  end

  def new
    @contact = Spree::ContactUs::Contact.new
  end

  private

  def accurate_title
    t('spree.contact_us.contacts.new.contact_us')
  end

end
