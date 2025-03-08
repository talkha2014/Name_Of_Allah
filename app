from telegram import Update, InlineKeyboardButton, InlineKeyboardMarkup
from telegram.ext import Application, CommandHandler, CallbackQueryHandler, ContextTypes
# Обработчик команды /start
async def start(update: Update, context: ContextTypes.DEFAULT_TYPE) -> None:
    keyboard = [
        [InlineKeyboardButton("Ар-Рахман", callback_data='ar_rahman')],
        [InlineKeyboardButton("Аль-Мухит", callback_data='al_muhit')]
    ]
    reply_markup = InlineKeyboardMarkup(keyboard)
    await update.message.reply_text('Привет! Вот имена Аллаха. Выбери имя, чтобы узнать больше:', reply_markup=reply_markup)

# Обработчик выбора имени
async def button(update: Update, context: ContextTypes.DEFAULT_TYPE) -> None:
    query = update.callback_query
    await query.answer()

    if query.data == 'ar_rahman':
        keyboard = [
            [InlineKeyboardButton("Значение имени Ар-Рахман", callback_data='meaning_ar_rahman')],
            [InlineKeyboardButton("Справедливость и милосердие в управлении", callback_data='justice_ar_rahman')],
            [InlineKeyboardButton("Забота о благополучии людей", callback_data='care_ar_rahman')],
            [InlineKeyboardButton("Назад", callback_data='back_to_names')]
        ]
        reply_markup = InlineKeyboardMarkup(keyboard)
        await query.edit_message_text(text="Вы выбрали: Ар-Рахман (Милостивый). Выберите раздел:", reply_markup=reply_markup)

    elif query.data == 'al_muhit':
        keyboard = [
            [InlineKeyboardButton("Значение имени Аль-Мухит", callback_data='meaning_al_muhit')],
            [InlineKeyboardButton("Любовь и забота в семье", callback_data='love_al_muhit')],
            [InlineKeyboardButton("Воспитание детей", callback_data='education_al_muhit')],
            [InlineKeyboardButton("Назад", callback_data='back_to_names')]
        ]
        reply_markup = InlineKeyboardMarkup(keyboard)
        await query.edit_message_text(text="Вы выбрали: Аль-Мухит (Объемлющий). Выберите раздел:", reply_markup=reply_markup)

    elif query.data == 'back_to_names':
        keyboard = [
            [InlineKeyboardButton("Ар-Рахман", callback_data='ar_rahman')],
            [InlineKeyboardButton("Аль-Мухит", callback_data='al_muhit')]
        ]
        reply_markup = InlineKeyboardMarkup(keyboard)
        await query.edit_message_text(text='Привет! Вот имена Аллаха. Выбери имя, чтобы узнать больше:', reply_markup=reply_markup)

    elif query.data == 'meaning_ar_rahman':
        text = """Имя Ар-Рахман (араб. الرحمن) — одно из самых значимых и прекрасных имён Аллаха, которое переводится как «Милостивый». 
Это имя подчеркивает безграничную милость Аллаха, которая охватывает всех Его творений в этом мире, независимо от их веры или поступков."""
        keyboard = [[InlineKeyboardButton("Назад", callback_data='ar_rahman')]]
        reply_markup = InlineKeyboardMarkup(keyboard)
        await query.edit_message_text(text=text, reply_markup=reply_markup)

    elif query.data == 'justice_ar_rahman':
        text = """Справедливость и милосердие в управлении

Имя Ар-Рахман напоминает правителям, что их власть должна быть основана на милосердии и справедливости. 
Аллах, будучи Милостивым, проявляет заботу о всех Своих творениях, и правители должны следовать этому примеру.

Аяты из Корана:
«Воистину, Аллах повелевает поддерживать справедливость, делать добро и одаривать родственников. 
Он запрещает мерзости, предосудительные поступки и бесчинства. Он наставляет вас, — быть может, вы последуете совету»
(Сура Ан-Нахль, 16:90).

«О Давуд (Давид)! Воистину, Мы назначили тебя наместником на земле. 
Суди же людей справедливо и не потакай своим желаниям, а не то они собьют тебя с пути Аллаха»
(Сура Сад, 38:26).

Хадисы:
Пророк Мухаммад (мир ему и благословение) сказал:
«Каждый из вас является пастырем и каждый из вас несёт ответственность за свою паству. 
Правитель является пастырем и несёт ответственность за своих подданных»
(Сахих аль-Бухари, Сахих Муслим)."""
        keyboard = [[InlineKeyboardButton("Назад", callback_data='ar_rahman')]]
        reply_markup = InlineKeyboardMarkup(keyboard)
        await query.edit_message_text(text=text, reply_markup=reply_markup)

    elif query.data == 'care_ar_rahman':
        text = """Забота о благополучии людей

Имя Ар-Рахман вдохновляет правителей заботиться о благополучии своих подданных, 
обеспечивая их основные потребности, такие как еда, жильё, безопасность и справедливость.

Аяты из Корана:
«И давайте родственнику то, что ему полагается, и бедняку, и путнику. И не расточайте безрассудно»
(Сура Аль-Исра, 17:26).

«О те, которые уверовали! Будьте стойки в справедливости, свидетельствуя перед Аллахом, 
если даже свидетельство будет против вас самих, или против родителей, или против близких родственников»
(Сура Ан-Ниса, 4:135).

Хадисы:
Пророк Мухаммад (мир ему и благословение) сказал:
«Лучший из правителей — тот, кого вы любите, и кто любит вас, кто молится за вас, и за кого молитесь вы. 
Худший из правителей — тот, кого вы ненавидите, и кто ненавидит вас, кто проклинает вас, и кого проклинаете вы»
(Сахих Муслим)."""
        keyboard = [[InlineKeyboardButton("Назад", callback_data='ar_rahman')]]
        reply_markup = InlineKeyboardMarkup(keyboard)
        await query.edit_message_text(text=text, reply_markup=reply_markup)

    elif query.data == 'meaning_al_muhit':
        text = """Имя Аль-Мухит (араб. المحيط) — одно из прекрасных имён Аллаха в исламе, 
которое переводится как «Объемлющий» или «Всеобъемлющий». 
Это имя подчеркивает безграничность и всеохватность Аллаха, Его знание, власть и милость, которые охватывают всё сущее."""
        keyboard = [[InlineKeyboardButton("Назад", callback_data='al_muhit')]]
        reply_markup = InlineKeyboardMarkup(keyboard)
        await query.edit_message_text(text=text, reply_markup=reply_markup)

    elif query.data == 'love_al_muhit':
        text = """Любовь и забота в семье

Имя Аль-Мухит напоминает, что Аллах объемлет Своей милостью всех членов семьи. 
Это вдохновляет супругов быть более любящими и заботливыми друг к другу.

Аят из Корана:
«Среди Его знамений — то, что Он сотворил для вас из вас самих жён, 
чтобы вы находили в них успокоение, и установил между вами любовь и милосердие. 
Воистину, в этом — знамения для людей размышляющих»
(Сура Ар-Рум, 30:21).

Хадис:
Пророк Мухаммад (мир ему и благословение) сказал:
«Лучший из вас — тот, кто лучше всех относится к своей семье, 
и я лучший из вас по отношению к своей семье»
(Ибн Маджа, Тирмизи)."""
        keyboard = [[InlineKeyboardButton("Назад", callback_data='al_muhit')]]
        reply_markup = InlineKeyboardMarkup(keyboard)
        await query.edit_message_text(text=text, reply_markup=reply_markup)

    elif query.data == 'education_al_muhit':
        text = """Воспитание детей

Имя Аль-Мухит напоминает родителям, что Аллах объемлет Своим знанием их детей. 
Это побуждает их воспитывать детей в соответствии с исламскими ценностями и быть примером для них.

Аят из Корана:
«О те, которые уверовали! Оберегайте себя и свои семьи от Огня, 
растопкой которого будут люди и камни»
(Сура Ат-Тахрим, 66:6).

Хадис:
Пророк Мухаммад (мир ему и благословение) сказал:
«Каждый из вас является пастырем и каждый из вас несёт ответственность за свою паству... 
Мужчина является пастырем для своей семьи и несёт ответственность за свою паству»
(Бухари, Муслим)."""
        keyboard = [[InlineKeyboardButton("Назад", callback_data='al_muhit')]]
        reply_markup = InlineKeyboardMarkup(keyboard)
        await query.edit_message_text(text=text, reply_markup=reply_markup)

async def main() -> None:
    # Вставьте сюда ваш токен
    application = Application.builder().token("7670671509:AAFc7dTGAs_itKU9JtzxyrnUE_fMRN0dRc8").build()

    application.add_handler(CommandHandler('start', start))
    application.add_handler(CallbackQueryHandler(button))

    await application.run_polling()

# Для запуска в среде с уже запущенным циклом событий (например, Jupyter Notebook)
if __name__ == '__main__':
    import nest_asyncio
    nest_asyncio.apply()  # Разрешаем вложенные циклы событий

    import asyncio

    # Проверяем, запущен ли уже цикл событий
    try:
        loop = asyncio.get_event_loop()
        if loop.is_running():
            # Если цикл уже запущен, используем create_task
            loop.create_task(main())
        else:
            # Если цикл не запущен, используем asyncio.run
            asyncio.run(main())
    except RuntimeError as e:
        print(f"Ошибка: {e}")
