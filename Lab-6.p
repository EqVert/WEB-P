//Інтерфейс для завантаження файлів
Interface Downloader
    Function download(file: String) -> Data
    
//Реалізація простого завантажувача
Class SimpleDownloader Implements Downloader
    Function download(file: String) -> Data
        // Логіка завантаження файлу
        Return someData
    
//Реалізація кешованого завантажувача
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


// Клієнтський код
simpleDownloader = New SimpleDownloader()
cachedDownloader = New CachedDownloader(simpleDownloader)

data1 = simpleDownloader.download("file1")
data2 = cachedDownloader.download("file1")  // Завантажує і кешує
data3 = cachedDownloader.download("file1")  // Використовує кешовані дані
