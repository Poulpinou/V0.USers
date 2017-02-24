User.create!([
  {pseudo: "Dodo", password: "CBlKPgTck", role: "Admin", email: "donovan.persent@gmail.com", encrypted_password: "$2a$11$WMCZsTro.jh7O1gIwl2LAubA/qy3ttgTbOihP/eMyl1a835bdEdGu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 19, current_sign_in_at: "2017-02-23 08:19:27", last_sign_in_at: "2017-02-23 00:41:48", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", available_votes: 1, rank: 0, picture_file_name: "Poulpinou_1.jpg", picture_content_type: "image/jpeg", picture_file_size: 24875, picture_updated_at: "2017-02-13 12:46:08"},
  {pseudo: "Babilou", password: "azerty", role: "Team", email: "babi@lou.com", encrypted_password: "$2a$11$gSSToqCS7ACY8kTpnkk4pe/F6.nPJT/ZtLDJrUxFhM7NeYJFzA20.", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 9, current_sign_in_at: "2017-02-22 23:43:03", last_sign_in_at: "2017-02-20 12:06:59", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", available_votes: 2, rank: 0, picture_file_name: nil, picture_content_type: nil, picture_file_size: nil, picture_updated_at: nil},
  {pseudo: "Dora", password: "qsdfgh", role: "User", email: "dora@et.bab", encrypted_password: "$2a$11$lo8/n3kz4L5BLw0g9G1wMuCHXGpT4S57QNFHsYOVH7X/lYRu/EtQ.", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 4, current_sign_in_at: "2017-02-23 00:41:37", last_sign_in_at: "2017-02-22 15:29:59", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", available_votes: 3, rank: 0, picture_file_name: "Dora.jpeg", picture_content_type: "image/jpeg", picture_file_size: 9545, picture_updated_at: "2017-02-22 11:54:09"}
])
Game.create!([
  {name: "V0.USers", version: "0.1.45"},
  {name: "Modubot", version: "1.2.4"}
])

Contact.create!([
  {sender: "Dodo", object: "Test #1", content: "Juste pour le test", state: "seen", aim: "contact"},
  {sender: "Dodo", object: "Test #4", content: "<p>Avec des <strong>effets</strong> <s>wesh</s>!</p>\r\n", state: "seen", aim: "contact"},
  {sender: "Dora", object: "Coucou c'est moi!", content: "<p>shftjvgkukhk</p>\r\n", state: "fav", aim: "contact"},
  {sender: "Dodo", object: "Test avec caractères spéciaux", content: "<p><strong>Babelu</strong> <span style=\"color:#FF0000;\">shabou</span> <span style=\"font-size:36px;\">nibaleck!</span></p>\r\n", state: "seen", aim: "contact"},
  {sender: "Dodo", object: "Lorem-ipsum", content: "<p style=\"text-align: center;\"><span style=\"font-size:36px;\">Lorem Ipsum</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Cras fringilla</strong> a diam a vehicula. Proin sit amet leo quis nisl condimentum posuere at ac justo. Phasellus facilisis placerat massa ac sodales. Integer non viverra <s>mauris</s>, vitae molestie massa. Integer sit amet justo ut felis eleifend sagittis nec vel dui. Proin vitae cursus orci. Mauris egestas nisl id quam sagittis, quis volutpat purus efficitur. Etiam sapien purus, mattis a urna ut, porta rhoncus ex. Mauris rhoncus sapien ut ipsum ullamcorper, in <span style=\"color:#FF0000;\">varius tortor auctor</span>. Nulla condimentum at quam ut porttitor. Nunc tincidunt congue accumsan. Phasellus vel est scelerisque, faucibus erat at, imperdiet libero.</p>\r\n\r\n<p>&nbsp;</p>\r\n", state: "fav", aim: "contact"},
  {sender: "Dodo", object: "Hire Me!", content: "<p>Cause I&#39;m the best!</p>\r\n", state: "new", aim: "hire"},
  {sender: "Dodo", object: "Buuuuuug!", content: "<p>Parce que je suis un chieur :D</p>\r\n", state: "fav", aim: "bug"},
  {sender: "Babilou", object: "Tu vas me prendre dans la team?", content: "<p>Alleeeeez... Steupl&eacute;!</p>\r\n", state: "fav", aim: "hire"},
  {sender: "Babilou", object: "T'façon ton site bug....", content: "<p>C&#39;est pas vrai mais la mauvaise foi paie toujours</p>\r\n", state: "seen", aim: "bug"},
  {sender: "Dodo", object: "Test sketchfab #2", content: "<div class=\"sketchfab-embed-wrapper\"><iframe width=\"640\" height=\"480\" src=\"https://sketchfab.com/models/8f48a7404c0e4277a5d4597fda61fd15/embed\" frameborder=\"0\" allowvr allowfullscreen mozallowfullscreen=\"true\" webkitallowfullscreen=\"true\" onmousewheel=\"\"></iframe>\r\n\r\n<p style=\"font-size: 13px; font-weight: normal; margin: 5px; color: #4A4A4A;\">\r\n    <a href=\"https://sketchfab.com/models/8f48a7404c0e4277a5d4597fda61fd15?utm_medium=embed&utm_source=website&utm_campain=share-popup\" target=\"_blank\" style=\"font-weight: bold; color: #1CAAD9;\">Steampunk Alchemist</a>\r\n    by <a href=\"https://sketchfab.com/defmaka?utm_medium=embed&utm_source=website&utm_campain=share-popup\" target=\"_blank\" style=\"font-weight: bold; color: #1CAAD9;\">defmaka</a>\r\n    on <a href=\"https://sketchfab.com?utm_medium=embed&utm_source=website&utm_campain=share-popup\" target=\"_blank\" style=\"font-weight: bold; color: #1CAAD9;\">Sketchfab</a>\r\n</p>\r\n</div>", state: "fav", aim: "contact"}
])
Idea.create!([
  {title: "Premier test", description: "Ben faut bien faire des tests hein!", content: "<p><span style=\"color:#0000CD;\"><span style=\"font-size: 36px;\">Le Lorem Ipsum c&#39;est trop beau!</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>In dapibus dolor in arcu pretium, vel venenatis ante blandit. Vestibulum quis dui a felis pellentesque pulvinar feugiat a leo. Sed eget vestibulum nisi. Ut congue commodo auctor. Etiam at consectetur enim. Etiam nec ante ut elit tincidunt tempor. Maecenas sapien massa, mollis et lectus non, eleifend euismod lacus. Nulla non maximus turpis, in placerat metus. Proin pretium mattis tincidunt? Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam id lacus ut orci varius vestibulum sit amet ut ligula. Donec at felis tellus. Sed tincidunt laoreet nisi porta egestas! Proin ac est nunc. Duis id tincidunt tellus, quis venenatis mauris.</p>\r\n\r\n<p>Integer et velit fermentum, malesuada sapien ultricies, luctus leo. Suspendisse ultrices enim ut est laoreet, at blandit urna mollis. In placerat pellentesque consectetur. Etiam nec consequat tellus, at aliquet ligula. Vivamus non pulvinar mi. Suspendisse congue finibus erat, et convallis lectus eleifend vel. Ut vitae tristique turpis. Nam accumsan est quis nulla laoreet, sed imperdiet nisl molestie! Fusce vehicula nunc neque, iaculis rutrum ipsum lacinia nec. Sed tincidunt felis tellus, id tristique massa sodales ac. Donec non velit nibh. Phasellus vel blandit purus, vel consectetur libero. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\r\n\r\n<p><a href=\"http://images.4ever.eu/data/download/drole/dessins/poulpe,-cigarette-247023.jpg\"><img alt=\"\" src=\"http://images.4ever.eu/data/download/drole/dessins/poulpe,-cigarette-247023.jpg\" style=\"width: 800px; height: 640px;\" /></a></p>\r\n\r\n<p>Aliquam euismod ligula ipsum, vel vulputate tortor congue quis. Suspendisse aliquet urna dui, ac volutpat augue mattis non. Aenean accumsan; neque in interdum laoreet, quam turpis pretium odio, quis lacinia lectus lectus non nulla. Aenean feugiat dictum mollis. Phasellus ante sem; varius quis vestibulum vel, vehicula eu sapien. Phasellus sapien nisl, egestas accumsan elementum a, bibendum sit amet nisi. Nunc vehicula ante et vehicula finibus. Pellentesque eleifend nisi sed mauris faucibus, vitae viverra massa mattis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Etiam euismod magna vitae metus sodales imperdiet a eget erat.</p>\r\n\r\n<p>&nbsp;</p>\r\n", user_id: 2, votes_amount: 2, rank: 1, game_id: 1},
  {title: "Dodomination!", description: "POWAAAAAAAH!", content: "<p>C&#39;est tout.</p>\r\n", user_id: 1, votes_amount: 0, rank: 3, game_id: 1},
  {title: "Votez pour moi!", description: "Parce que je suis la plus belle :3", content: "<p>C&#39;est tout &lt;3</p>\r\n", user_id: 8, votes_amount: 1, rank: 2, game_id: 1}
])
Comment.create!([
  {content: "T'as une notif?", user_id: 1, idea_id: 3},
  {content: "D'accord.", user_id: 1, idea_id: 3},
  {content: "Ouais tu crains!", user_id: 8, idea_id: 2},
  {content: "<p>Je devrais vraiment supprimer les commentaires...</p>\r\n", user_id: 1, idea_id: 1},
  {content: "<p>T&#39;y arriveras jamais</p>\r\n", user_id: 2, idea_id: 2},
  {content: "<p>Tellement....</p>\r\n", user_id: 2, idea_id: 2},
  {content: "<p>Non mais vraiment quoi</p>\r\n", user_id: 2, idea_id: 2},
  {content: "<p>Allez, cette fois c&#39;est la bonne! :D</p>\r\n", user_id: 1, idea_id: 1},
  {content: "<p>On s&#39;en care mec -_-&#39;</p>\r\n", user_id: 2, idea_id: 2},
  {content: "<p>Retestons encore!</p>\r\n", user_id: 1, idea_id: 1},
  {content: "<p>H&eacute;! C&#39;est mon truc les poulpes! o_O&#39;</p>\r\n", user_id: 1, idea_id: 1}
])
Notif.create!([
  {content: "Dora commented Dodomination!", redirection: "http://localhost:3000/comments", seen: false, user_id: 1},
  {content: "Dodo commented Votez pour moi!", redirection: "http://localhost:3000/comments", seen: false, user_id: 8},
  {content: "Dodo commented Votez pour moi!", redirection: "http://localhost:3000/comments", seen: false, user_id: 8}
])
Vote.create!([
  {user_id: 2, idea_id: 1},
  {user_id: 1, idea_id: 1},
  {user_id: 1, idea_id: 3}
])
