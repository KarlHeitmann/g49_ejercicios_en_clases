class Carta
  def initialize(numero, pinta)
    if @pintas_posibles.nil?
      @pintas_posibles = []
    end
    @numeros_posibles = [] if @numeros_posibles.nil?
    raise "ERROR!!!! numero incorrecto. Escoja uno de los siguientes valores: #{@numeros_posibles}" unless @numeros_posibles.include? numero
    raise "ERROR!!!! pinta incorrecta. Escoja uno de los siguientes valores: #{@pintas_posibles}" unless @pintas_posibles.include? pinta
    @numero = numero
    @pinta = pinta
  end

  def to_s
    "#{@numero} - #{@pinta}"
  end
end

