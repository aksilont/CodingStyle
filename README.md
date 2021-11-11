# Property Wrapper @CodingStyle

Доступные стили:
.camelCase
.snakeStyle
.kebabStyle

Пример использования:
@CodingStyle(.camelCase) var someValue = "this is some string"
Результат:
print(someValue) = "ThisIsSomeString"

Есть возможность менять стиль, пример:
$someValue = .kebabStyle
Результат:
print(someValue) = "this-is-some-string"

