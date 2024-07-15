# Имя исполняемого файла передается через командную строку
TARGET = $(TARGET)

# Имя исходного файла (предполагается, что имя совпадает с TARGET и имеет расширение .cpp)
SRC = $(TARGET).cpp

# Папка для исполняемого файла
BIN_DIR = bin

# Компилятор и его флаги
CXX = g++
CXXFLAGS = -g

# Правило по умолчанию
all: $(BIN_DIR)/$(TARGET)

# Создание папки bin, если она не существует
$(BIN_DIR):
	mkdir -p $(BIN_DIR)

# Правило для компиляции
$(BIN_DIR)/$(TARGET): $(SRC) | $(BIN_DIR)
	$(CXX) $(CXXFLAGS) -o $@ $^

# Очистка скомпилированных файлов
clean:
	rm -f $(BIN_DIR)/$(TARGET)