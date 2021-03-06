class OfferMailer < Spree::BaseMailer
  helper "spree/base"

  def pending(offer)
    @offer = offer
    subject = "#{Spree::Config[:site_name]} - #{t('offer.email.pending.subject')} - #{offer.product.name}"
    mail(to: offer.store.user.email, from: from_address, subject: subject)
  end

  def rejected(offer)
    @offer = offer
    subject = "#{Spree::Config[:site_name]} - #{t('offer.email.rejected.subject')} - #{offer.product.name}"
    mail(to: @offer.user.email, from: from_address, subject: subject)
  end

  def counter_offer(offer)
    @offer = offer
    subject = "#{Spree::Config[:site_name]} - #{t('offer.email.counter_offer.subject')} - #{offer.product.name}"
    mail(to: @offer.user.email, from: from_address, subject: subject)
  end

  def counter_offer_accepted(offer)
    @offer = offer
    subject = "#{Spree::Config[:site_name]} - #{t('offer.email.counter_offer_accepted.subject')} - #{offer.product.name}"
    mail(to: offer.store.user.email, from: from_address, subject: subject)
  end

  def accepted(offer)
    @offer = offer
    subject = "#{Spree::Config[:site_name]} - #{t('offer.email.accepted.subject')} - #{offer.product.name}"
    mail(to: @offer.user.email, from: from_address, subject: subject)
  end
end
