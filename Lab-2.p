// Интерфейс для социальных медиа платформ
Interface SocialMedia
    Method PublishMessage(message: String): Boolean

// Классы для Facebook и LinkedIn
Class Facebook Implements SocialMedia
    // Поля для аутентификации в Facebook
    Field login: String
    Field password: String
    Method PublishMessage(message: String): Boolean
        // Логика публикации сообщения на Facebook
        Return True or False

Class LinkedIn Implements SocialMedia
    // Поля для аутентификации в LinkedIn
    Field email: String
    Field password: String
    Method PublishMessage(message: String): Boolean
        // Логика публикации сообщения на LinkedIn
        Return True or False

// Для добавления новой социальной сети, создать новый класс, реализующий интерфейс SocialMedia


// Пример использования
Function PublishToSocialMedia(platform: SocialMedia, message: String)
    If platform.PublishMessage(message) Then
        Print "Message published successfully."
    Else
        Print "Failed to publish the message."
    End If
End Function

// Создание объектов и публикация сообщений
facebook = New Facebook
facebook.login = "MyLogin"
facebook.password = "MyPassword"

linkedin = New LinkedIn
linkedin.email = "MyEmail"
linkedin.password = "MyPassword"

PublishToSocialMedia(facebook, "Hello, Facebook!")
PublishToSocialMedia(linkedin, "Hello, LinkedIn!")
