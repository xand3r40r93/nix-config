# Определяем оверлей для пакета aerospace
final: prev: {
  aerospace = prev.aerospace.overrideAttrs (oldAttrs: {
    # Ваши изменения для пакета aerospace
    version = "custom-version";

    # Другие переопределения по необходимости
    buildInputs = oldAttrs.buildInputs ++ [
      final.дополнительная-зависимость
    ];

    # Дополнительные патчи
    patches = oldAttrs.patches ++ [ ../patches/aerospace-fix.patch ];
  });
}
