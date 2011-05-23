require 'reco_test'

class PreprocessorTest < Reco::TestCase
  def test_preprocessing_hello_eco_fixture
    assert_equal fixture('hello.coffee'), preprocess(fixture('hello.eco'))
  end
  
  def test_preprocessing_projects_eco_fixture
    assert_equal fixture('projects.coffee'), preprocess(fixture('projects.eco'))
  end
  
  private
  def preprocess(source)
    Reco::Preprocessor.preprocess source
  end
end
