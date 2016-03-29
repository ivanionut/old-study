class GuidedOffersController < ApplicationController

  def listing
    puts "Category: [#{params[:category]}]; Page: [#{params[:page]}]"

    category = params[:category]
    page = params[:page]

    # Validazione della presenza dei parametri.
    if not (category.present? && page.present?)
      return bad_request
    end

    # A questo punto entrambe i parametri sono presenti...

    # Validazione del parametro page come numero intero.
    if not is_integer?(page)
      return bad_request
    end

    page_number = Integer(page)

    if page_number < 0
      return bad_request
    end

    if page_number == 0
      return not_found
    end

    if page_number >= 1_000_000
      return gone
    end

    # Il parametro page è corretto, controllo la categoria
    if (category == 'all' || category == 'telefonia' || category == 'inesistente')
      return not_found
    end

    render text: "Category: [#{params[:category]}]; Page: [#{params[:page]}]"
  end

  private

  def is_integer?(string)
    true if Integer(string) rescue false
  end


end