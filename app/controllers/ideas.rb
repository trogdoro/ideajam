class Ideas < Application

  def index

    p params

    # TODO get from checkbox
    sources = {
      "gem_cutter" => [
        ["http://gemcutter.org/gems/jramos-activerecord-activesalesforce-adapter", "Jramos"],
        ["http://gemcutter.org/gems/dacs", "Dacs"],
        ["http://gemcutter.org/gems/client_validations", "Client Validations"],
        ],
      "ruby_quiz" => [
        ["http://rubyquiz.com/quiz1.html", "The Solitaire Cipher"],
        ["http://rubyquiz.com/quiz2.html", "Secret Santas"],
        ["http://rubyquiz.com/quiz3.html", "Geodesic Dome Faces"],
        ]
      }

    @keys = sources.keys.sort

    choices = []
    @keys.each do |key|
      choices << key if params[key]
    end

    if ! choices.any?
      @link = ["", "Select some checkboxes"]
      return render
    end

p "choices: #{choices.inspect}"
    choice = choices.sort_by{ rand }[0]

    source = sources[choice]

    @human_choice = choice.gsub('_', ' ').gsub!(/\w+/) { $&.capitalize }

    @link = source.sort_by{ rand }[0]

    #     "<a href='#{line[0]}'>#{line[1]}</a><br>"
    render

  end
end
