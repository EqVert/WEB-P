# Визначте абстрактний клас EntityUpdater з шаблонним методом для оновлення сутностей
class EntityUpdater:
    # Шаблонний метод для оновлення сутності
    def update_entity(entity_id):
        # Отримати сутність за її ID
        entity = get_entity(entity_id)
        
        # Перевірити, чи існує сутність
        if entity:
            # Валідувати дані сутності
            if validate_data(entity):
                # Зберегти дані сутності
                save_entity(entity)
                
                # Сформувати та повернути відповідь
                response = format_response(entity)
                return response
            else:
                # Повідомити адміністратора у випадку невдалої валідації
                notify_admin()
                return "Валідація не пройшла", 400
        else:
            return "Сутність не знайдена", 404

    # Абстрактні методи, які повинні бути реалізовані конкретними підкласами
    def get_entity(entity_id):
        pass

    def validate_data(entity):
        pass

    def save_entity(entity):
        pass

    def format_response(entity):
        pass
    
    # Метод-хук, який може бути перевизначений підкласами для додаткової функціональності
    def notify_admin():
        pass

# Визначте конкретний підклас ProductUpdater, який розширює EntityUpdater
class ProductUpdater(EntityUpdater):
    def get_entity(entity_id):
        pass

    def validate_data(entity):
        pass

    def save_entity(entity):
        pass

    def format_response(entity):
        pass

# Визначте конкретні підкласи UserUpdater та OrderUpdater аналогічно
class UserUpdater(EntityUpdater):
    pass

class OrderUpdater(EntityUpdater):
    pass

# Приклади використання:
product_updater = ProductUpdater()
product_response = product_updater.update_entity(product_id)

user_updater = UserUpdater()
user_response = user_updater.update_entity(user_id)

order_updater = OrderUpdater()
order_response = order_updater.update_entity(order_id)
