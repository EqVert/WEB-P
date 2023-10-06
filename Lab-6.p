//Интерфейс для загрузки файлов
Interface Downloader
    Function download(file: String) -> Data
    
//Реализация загрузчика
Class SimpleDownloader Implements Downloader
    Function download(file: String) -> Data
        // Логика загрузки файла
        Return someData
    
//Реализация кешированного загрузчика
Class CachedDownloader Implements Downloader
    Private simpleDownloader: SimpleDownloader
    Private cache: Cache
    
    Function download(file: String) -> Data
        If cache.contains(file)
            Return cache.get(file)
        End If
        data = simpleDownloader.download(file)
        cache.put(file, data)
        Return data


// Пример кода
simpleDownloader = New SimpleDownloader()
cachedDownloader = New CachedDownloader(simpleDownloader)

data1 = simpleDownloader.download("file1")
data2 = cachedDownloader.download("file1")  // Загружает и кеширует
data3 = cachedDownloader.download("file1")  // Использует кешированные данные
