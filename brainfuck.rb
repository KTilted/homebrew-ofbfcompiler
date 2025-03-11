class Brainfuck < Formula
  desc "The one-file brainfuck compiler written on Python."
  homepage "https://github.com/ktilted/onefilepythonbrainfuckcompiler"
  url "https://github.com/ktilted/onefilepythonbrainfuckcompiler/archive/refs/tags/ofbfcompiler-v1.0.0.tar.gz"
  sha256 "aee592a271bfa809c8cfefaacc97db83ed6f0fd084d26cce783bc42d463e2f7e"
  license "GNU GPLv3"  # Укажите лицензию вашего проекта

  depends_on "python"  # Если ваш компилятор требует Python

  def install
    bin.install "brainfuck.py" => "brainfuck"  # Устанавливаем файл и переименовываем его
  end

  test do
    system "#{bin}/brainfuck", "--version"  # Добавьте тест для проверки установки
  end
end