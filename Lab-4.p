// Класс для уведомлений через Slack
SlackNotification
    // Конструктор принимает логин, API-ключ и ID чата
    constructor(login, apiKey, chatId)
    // Метод для отправки сообщения в Slack
    sendToSlack(message)

// Адаптер для Slack, реализует интерфейс Notification
SlackNotificationAdapter implements Notification
    // Конструктор принимает объект SlackNotification
    constructor(slackNotification)
    // Метод для отправки уведомления
    send(title, message)

// Класс для уведомлений через SMS
SMSNotification
    // Конструктор принимает номер телефона и имя отправителя
    constructor(phone, sender)
    // Метод для отправки SMS
    sendSMS(message)

// Адаптер для SMS, реализует интерфейс Notification
SMSNotificationAdapter implements Notification
    // Конструктор принимает объект SMSNotification
    constructor(smsNotification)
    // Метод для отправки уведомления
    send(title, message)
