class AreaLogada
  include Capybara::DSL

  def busca(cat)
    find("a[href='/search/new']").click
    find("img[src$= '#{cat.downcase}.png']").click
  end

  def selecionaBanda(banda, parodia)
    find("a", text: banda).click
    song = find(".song-item", text: parodia)
    song.find(".fa-play-circle").click
    # ou find(.song-item .fa-play-circle).click
  end

  def reproduzindo
    find(".playing")
  end
end
