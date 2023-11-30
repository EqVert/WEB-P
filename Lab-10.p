class Page:
    # Встановлює дату доставки
    def set_delivery_date(self, date: Date) -> None:
    # Повертає доступні часові слоти для вказаної дати
    def get_available_time_slots(self, date: Date) -> List[TimeSlot]:
    # Встановлює деталі отримувача
    def set_recipient_details(self, is_other_person: bool) -> None:
    # Встановлює, чи буде товар забиратися з магазину
    def set_store_pickup(self, is_pickup: bool) -> None:
    # Перевіряє коректність деталей отримувача
    def validate_recipient_details(self) -> bool:

class Mediator:
    # Повідомляє про подію
    def notify(self, event: str, page: Page) -> None:


class DeliveryMediator(Mediator):
    # Посередник для управління процесом доставки
    def __init__(self):
        self.date = None
        self.is_other_person = False
        self.is_pickup = False

    # Встановлює дату доставки
    def set_date(self, date: Date) -> None:
        self.date = date

    # Встановлює, чи буде отримувати замовлення інша особа
    def set_other_person(self, is_other_person: bool) -> None:
        self.is_other_person = is_other_person

    # Встановлює, чи буде замовлення забиратися з магазину
    def set_pickup(self, is_pickup: bool) -> None:
        self.is_pickup = is_pickup

    # Оновлює стан в залежності від події
    def update(self, event: str, page: Page) -> None:
        pass

## Сторінка управління доставкою
class DeliveryPage(Page):

    def __init__(self):
        self.mediator = None
        self.delivery_mediator = None

    # Решта методів аналогічні батьківському класу Page

## Клієнтський код
def main() -> None:
    delivery_page = DeliveryPage()
    delivery_mediator = DeliveryMediator()

    delivery_page.mediator = delivery_mediator
    delivery_page.delivery_mediator = delivery_mediator

    delivery_page.set_delivery_date(today)
    available_time_slots = delivery_page.get_available_time_slots(today)
    delivery_page.set_recipient_details(True)
    is_details_valid = delivery_page.validate_recipient_details()

    if is_details_valid:
        delivery_page.set_store_pickup(True)
    else:
        delivery_mediator.set_date(tomorrow)
        delivery_mediator.set_other_person(False)
        delivery_mediator.set_pickup(False)
        delivery_mediator.update("recipient_details_invalid", delivery_page)

# Виклик головної функції
main()
