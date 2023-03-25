runtime! ../plugin/semver.vim

describe 'semver major'

  before
    new
    put! = "version: 4.0.0"
  end

  after
    close!
  end

	it 'works'
    normal <Leader>im
    Expect getline(1) == "1.2.3"
	end

end
