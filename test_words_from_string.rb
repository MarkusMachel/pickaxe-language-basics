require_relative "word_from_string"
require "minitest/autorun"

class TestWordsFromString < Minitest::Test
    def test_empty_string
        assert_equal([], word_from_string(""))
        assert_equal([], word_from_string("   "))
    end

    def test_single_word
        assert_equal(["cat"], word_from_string("cat"))
        assert_equal(["cat"], word_from_string("  cat  "))
    end

    def test_many_words
        assert_equal(["one", "two", "three"], word_from_string(" one two three"))
        assert_equal(["one", "two", "three"], word_from_string("one, two, three"))
    end

    def test_ignores_punctuation
        assert_equal(["the", "cats's", "mat"], word_from_string("<the!> cat's, -mat-"))
    end
end