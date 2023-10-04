#Лаборторная работа 1 (Cистема управления файлами пользователя паттерн Одинак)
class FileManager:
    instance = null
    storageList = {}
    currentStorage = null
    
    static method getInstance():
        if instance is null:
            instance = new FileManager()
        return instance
    
    method addStorage(storageName: String, storage: Storage):
        storageList[storageName] = storage
        return "Хранилище " + storageName + " добавлено"
    
    method connectToStorage(username: String, storageName: String):
        if storageName in storageList:
            currentStorage = storageList[storageName]
            return username + " подключен к " + storageName
        else:
            return "Хранилище " + storageName + " не найдено"
    
    method createFile(username: String, filename: String):
        if currentStorage is null:
            return "Не подключено хранилище"
        // Логика создания файла в currentStorage
        return "Файл " + filename + " создан для пользователя " + username
    
    method deleteFile(username: String, filename: String):
        if currentStorage is null:
            return "Не подключено хранилище"
        // Логика удаления файла в currentStorage
        return "Файл " + filename + " удалён для пользователя " + username
    
    method readFile(username: String, filename: String):
        if currentStorage is null:
            return "Не подключено хранилище"
        // Логика чтения файла в currentStorage
        return "Содержимое файла " + filename + " для пользователя " + username
    
    method writeFile(username: String, filename: String, content: String):
        if currentStorage is null:
            return "Не подключено хранилище"
        // Логика записи в файл в currentStorage
        return "Данные записаны в файл " + filename + " для пользователя " + username


// Использование FileManager
fileManager = FileManager.getInstance()

response = fileManager.addStorage("storage1", new Storage())
print(response)

response = fileManager.connectToStorage("Иван", "storage1")
print(response)

response = fileManager.createFile("Иван", "документ.txt")
print(response)

response = fileManager.writeFile("Иван", "документ.txt", "Привет, мир!")
print(response)

response = fileManager.readFile("Иван", "документ.txt")
print(response)

response = fileManager.deleteFile("Иван", "документ.txt")
print(response)
