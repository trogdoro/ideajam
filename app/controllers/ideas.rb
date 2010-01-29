class Ideas < Application

  def index

    p params

    # TODO get from checkbox
    sources = {
      "gem_cutter" => [
        ["http://gemcutter.org/gems/jramos-activerecord-activesalesforce-adapter", "Jramos"],
        ["http://gemcutter.org/gems/dacs", "Dacs"],
        ["http://gemcutter.org/gems/client_validations", "Client Validations"],
        ["http://gemcutter.org/gems/htree", "Htree"],
        ["http://gemcutter.org/gems/mhs-rvideo", "Mhs Rvideo"],
        ["http://gemcutter.org/gems/activesupport", "Activesupport"],
        ["http://gemcutter.org/gems/activerecord", "Activerecord"],
        ["http://gemcutter.org/gems/actionpack", "Actionpack"],
        ["http://gemcutter.org/gems/rails", "Rails"],
        ["http://gemcutter.org/gems/rack", "Rack"],
        ["http://gemcutter.org/gems/hadoop-rubydsl", "Hadoop Rubydsl"],
        ["http://gemcutter.org/gems/jruby-on-hadoop", "Jruby On Hadoop"],
        ["http://gemcutter.org/gems/exact4r", "Exact 4R"],
        ["http://gemcutter.org/gems/jspec", "Jspec"],
        ["http://gemcutter.org/gems/kasket", "Kasket"],
        ],
      "ruby_quiz" => [
        ["http://rubyquiz.com/quiz1.html", "The Solitaire Cipher"],
        ["http://rubyquiz.com/quiz2.html", "Secret Santas"],
        ["http://rubyquiz.com/quiz3.html", "Geodesic Dome Faces"],
        ["http://rubyquiz.com/quiz4.html", "Regexp"],
        ["http://rubyquiz.com/quiz5.html", "Sokoban"],
        ["http://rubyquiz.com/quiz6.html", "GEDCOM Parser"],
        ["http://rubyquiz.com/quiz7.html", "Countdown"],
        ["http://rubyquiz.com/quiz8.html", "Object Browser"],
        ["http://rubyquiz.com/quiz9.html", "Banned Words"],
        ["http://rubyquiz.com/quiz10.html", "Crosswords"],
        ["http://rubyquiz.com/quiz11.html", "Learning Tic-Tac-Toe"],
        ["http://rubyquiz.com/quiz12.html", "Scrabble Stems"]
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
