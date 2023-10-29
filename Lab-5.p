// Абстрактный класс для страницы
class Page
    // Хранит ссылку на объект типа Renderer
    field renderer: Renderer
    // Метод для отображения страницы
    method view()

// Простая страница
class SimplePage extends Page
    // Заголовок и контент страницы
    field title: string, content: string

// Сторінка товару
class ProductPage extends Page
    // Объект класса Product
    field product: Product

// Класс для информации о товаре
class Product
    // Название, описание, изображение и ID товара
    field name: string, description: string, image: string, id: int

// Интерфейс для типов подання
interface Renderer
    // Методы для отображения информации
    method renderTitle(title: string): string
    method renderContent(content: string): string
    method renderImage(image: string): string
    method renderLink(id: int): string

// Реализация подання в формате HTML
class HTMLRenderer implements Renderer

// Реализация подання в формате JSON
class JsonRenderer implements Renderer

// Реализация подання в формате XML
class XmlRenderer implements Renderer

