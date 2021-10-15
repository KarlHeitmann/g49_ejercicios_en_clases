require 'test/unit'
require_relative 'carta'
# Documentacion: https://docs.ruby-lang.org/en/2.1.0/MiniTest/Assertions.html

class TestCarta < Test::Unit::TestCase
    def test_raises_error_carta_new
      assert_raises(RuntimeError) {Carta.new('espadas', 10)}
    end
end

