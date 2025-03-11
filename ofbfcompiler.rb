class Ofbfcompiler < Formula
  desc "The one-file brainfuck compiler written on Python."
  homepage "https://github.com/ktilted/onefilepythonbrainfuckcompiler"
  url "https://github.com/KTilted/OneFilePythonBrainfuckCompiler/releases/download/v1.0.0/ofbfcompiler-v1.0.0.tar.gz"
  sha256 "740e5db4ee34b56cbb48b51e502f6bee1d09ccfd48059fda5f5dd82143b241a9"
  license "GNU GPLv3"  # Укажите лицензию вашего проекта

  depends_on "python"  # Если ваш компилятор требует Python

  def install
    bin.install "brainfuck.py" => "brainfuck"  # Устанавливаем файл и переименовываем его
  end

  test do
    system "#{bin}/brainfuck", "--version"  # Добавьте тест для проверки установки
  end
end