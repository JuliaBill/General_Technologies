// 1. Вывести названия двух произвольных треков с тегом awesome

db.tracks.aggregate([
  { $match: { tags: "awesome" } },
  {
    $sample: { size: 2 },
  },
]);

// 2. Вывести имя юзера с самым минимальным балансом

db.users.aggregate([
  { $sort: { balance: 1 } },
  { $limit: 1 },
  {
    $project: {
      fullname: 1,
      _id: 0,
    },
  },
]);

// 3. Используя метод countDocuments(), вывести ко-во заблокированных юзеров с балансом от 10 до 1000 EUR

db.users.countDocuments(
  { is_blocked: true },
  { balance: { $gte: 10, $lte: 1000 } }
);

// 4. Используя метод aggregate(), вывести ко-во незаблокированных юзеров не из Germany и не из France с балансом до 1000 EUR

db.users.aggregate([
    { $match:
    { is_blocked: { $ne: true } },
    { balance: { $lte: 1000 } },
    { country: { $nin: ["Germany", "France"]} }},
    { $count: 'unblocked_users' }
])

// 5. Также очень коротко опишите, как работает агрегация в MongoDB

// Операции агрегирования обрабатывают данные и возвращают вычисленные результаты. Они группируют значения из нескольких документов, выполняют с ними разные действия и возвращают один-единственный результат.




