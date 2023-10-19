// Загальний інтерфейс стратегій для розрахунку вартості доставки
interface DeliveryStrategy
    method calculateCost(distance, weight)

// Конкретна стратегія для самовивозу
class SelfPickup implements DeliveryStrategy
    method calculateCost(distance, weight)
        return 0  // Самовивіз безкоштовний

// Конкретна стратегія для зовнішньої служби доставки
class ExternalDeliveryService implements DeliveryStrategy
    method calculateCost(distance, weight)
        return distance * 2 + weight  // Приклад формули розрахунку

// Конкретна стратегія для власної служби доставки
class OwnDeliveryService implements DeliveryStrategy
    method calculateCost(distance, weight)
        return distance * 1.5 + weight * 0.5  // Приклад формули розрахунку

// Контекстний клас, який використовує обрану стратегію доставки
class DeliveryContext
    private strategy: DeliveryStrategy

    method setStrategy(DeliveryStrategy strategy)
        this.strategy = strategy

    method calculateDeliveryCost(distance, weight)
        return strategy.calculateCost(distance, weight)

// Приклад використання в додатку
class ExampleApplication
    method main()
        // 1. Створити об'єкт контексту.
        context = new DeliveryContext()
        
        // 2. Вибрати спосіб доставки.
        if (deliveryMethod == 'SelfPickup') then
            context.setStrategy(new SelfPickup())
        
        if (deliveryMethod == 'ExternalDeliveryService') then
            context.setStrategy(new ExternalDeliveryService())
        
        if (deliveryMethod == 'OwnDeliveryService') then
            context.setStrategy(new OwnDeliveryService())
        
        // 3. Розрахувати вартість доставки.
        deliveryCost = context.calculateDeliveryCost(distance, weight)
