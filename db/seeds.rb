user = User.create( provider: "Vkontakte",
                    url: "http://vk.com/id226743771",
                    uid: "226743771",
                    username: "Александр Пистолетов",
                    nickname: "nil",
                    email: "226743771@vk.com",
                    image: "http://cs412918.vk.me/v412918771/5259/kQiZrXkGd_U.jpg",
                    password:Devise.friendly_token[0,20]
                    roles:[:editor] )
