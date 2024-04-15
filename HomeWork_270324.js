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
    { is_blocked: { $ne: true } } ,
    { balance: { $lte: 1000 } },
    { country: { $nin: ["Germany", "Framce"]} }
    },
    { $count: 'unblocked_users' }
])

// 5. Также очень коротко опишите, как работает агрегация в MongoDB




db.reactions.aggregate([
    {
        $lookup: {
            from: 'users', // название коллекции
            localField: 'author_id', // внеш/ключ в тек/коллекции
            foreignField: '_id', // перв/ключ в связанной коллекции
            as: 'author' // куда поместить данные
        }
    }
])

"track_id" : ObjectId("65e8553c1da2555eb411b746")