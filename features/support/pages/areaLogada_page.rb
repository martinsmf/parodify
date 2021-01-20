class AreaLogada
  include Capybara::DSL

  def busca(cat)
    find("a[href='/search/new']").click
    find("img[src$= '#{cat.downcase}.png']").click
  end
end
