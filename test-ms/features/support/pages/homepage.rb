class Homepage < SitePrism::Page

  set_url "http://www.marksandspencer.com/"

  element :global_search, '#global-search'
  element :search_button, '#goButton'
  element :search_message, '.criteria'  
  element :search_result, ".scale-wrapper.wrap"

  element :no_result, ".no-results"
  elements :list_of_products, ".prodAnchor"
  element :product_detail_page, ".product-detail-page"
  elements :categories, ".mega-trigger"
  element :cat_name, ".lined-header > h1 > span"

  element :location_link, ".link.touch-hidden"
  element :store_search,   "#store-search"

  element :location_btn, ".button.primary-btn.not-touch"
  elements :list_of_stores, ".store-item__name.ng-binding"

  element :store_finder, ".store-finder-container.ng-scope"


  def find_text(selector, text)
    selector.each do |link|
      return link if link.text.include?(text)
    end
  end

end