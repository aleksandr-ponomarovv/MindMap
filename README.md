# MindMap

## Завдання
Реалізувати програму для створення Mind Map (Мап Розуму).

На старті програми користувач бачить список файлів. При першому запуску список порожній. В navigation bar знаходиться кнопка для створення нового файлу.

Коли користувач натискає кнопку "Новий документ", з'являється діалог для введення назви файлу. Після закриття діалогу відкривається контролер з новоствореною мапою думок. В центрі мапи знаходиться головна ідея, текст головної ідеї збігається з назвою файлу.

Для створення нової ідеї треба одним пальцем провести від батьківської ідеї до місця, де має з'явитися нова ідея. Коли користувач відпускає палець, з'являється діалог для введення тексту ідеї.

Зовнішній вигляд ідей може бути будь-яким: просто підкреслення, прямокутник, овал – на ваш вибір. Форма гілок-з'єднань теж довільна: сплайни, прямі лінії, вирішувати вам.

Якщо користувач дабл тапає ідею, відкривається діалог-редактор з текстом ідеї. Таким чином текст ідеї можна відредагувати, писати будь-якою мовою та ставити емодзі. 

Коли користувач виходить з в'юеру мапи (або згортає програму), дані мапи зберігаються у файл на диску. У майбутньому такі файли можна буде передати іншим користувачам, які користуються такою ж програмою. 

Ідеї можна переміщувати по мапі двома пальцями.

Якщо торкнутися і утримати (long press) ідею, з'являється меню (UIMenu/UIMenuController) із двома пунктами: Редагувати (відкриється діалог-редактор тексту) та Видалити (видаляє ідею після підтвердження UIAlertController).

Мапою можна переміщатися (scroll). Функція масштабування (zoom) не потрібна.


## Критерії оцінювання:
оформлення коду (відступи, назви змінних, методів) – 5 балів;
ООП дизайн (низька зв’язність, цикломатична складність, тестування) – 25 балів;
основна функціональність – 25 балів;
додаткове завдання: scroll – 10 балів;
додаткове завдання: save to file – 10 балів;
додаткове завдання: zoom – 15 балів;
вдалий user experience (швидкість роботи, зрозумілість інтерфейсу, зручність) – 10 балів.
