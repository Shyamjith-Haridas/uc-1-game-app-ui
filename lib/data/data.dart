class GameImage {
  String imageUrl;
  String title;

  GameImage(this.imageUrl, this.title);
}

class Game {
  String title;
  GameImage coverImage;
  List<GameImage>? images;
  String gameDescription;
  String gameStudio;

  Game(this.title, this.coverImage, this.gameDescription, this.gameStudio);
}

List<Game> games = [
  Game(
    "Euro Truck Simulator2",
    GameImage(
        "https://mods.club/uploads/mods/73495-ets2-4-dlc-for-euro-truck-simulator-1-36-2-24s.jpg",
        ""),
    "",
    "SCS Studio",
  ),
  Game(
    "Wreckfest2",
    GameImage(
        "https://www.thedrive.com/wp-content/uploads/2025/03/ss_a254ff32e5cbdf97fbc9f693ef3914f30ac17b83.1920x1080.jpg?quality=85",
        ""),
    "",
    "Bugbear Entertainment",
  ),
  Game(
    "Arma:Reforger",
    GameImage(
        "https://m.media-amazon.com/images/I/51v940HSwkL._AC_UF894,1000_QL80_.jpg",
        ""),
    "",
    "Enfusion engine",
  ),
  Game(
    "FC 25",
    GameImage(
        "https://phantom-marca.unidadeditorial.es/89caddc4dfbea9b165eb6f1cf0480a50/crop/174x0/1900x1150/resize/1320/f/webp/assets/multimedia/imagenes/2024/09/23/17271106132540.jpg",
        ""),
    "",
    "EA Sports",
  ),
  Game(
    "NBA 2K25",
    GameImage("https://gameroom.lv/121763/nba-2k25.jpg", ""),
    "",
    "Visual Concept",
  ),
];

List<Game> games2 = [
  Game(
    "Grand Theft Auto V",
    GameImage(
        "https://gpstatic.com/acache/26/25/1/uk/packshot-7136bdab871d6b2c8f07ccc9ad33b4d0.jpg",
        ""),
    "",
    "Rockstar Games",
  ),
  Game(
    "Just Cause 4",
    GameImage(
        "https://s3.gaming-cdn.com/images/products/2666/orig/just-cause-4-cover.jpg",
        ""),
    "",
    "Avalanche Studios",
  ),
  Game(
    "Black Myth: Wukong",
    GameImage(
        "https://assets-prd.ignimgs.com/2024/08/18/blackmyth-1723969364570.jpg?width=300&crop=1%3A1%2Csmart&auto=webp&dpr=2",
        ""),
    "",
    "Game Science",
  ),
  Game(
    "PES 2024",
    GameImage(
        "https://gaming-cdn.com/images/products/14996/orig/efootball-2024-pc-game-steam-cover.jpg?v=1698070162",
        ""),
    "",
    "Konami",
  ),
];

List<Game> featuredGames = [
  Game(
    "Baldur's Gate III",
    GameImage(
      "https://cdn.wccftech.com/wp-content/uploads/2020/10/Baldurs-Gate-3-Preview-01-Header.jpg",
      "",
    ),
    "Return to Faerun in a tale of fellowship and betrayal, and the lure of absolute power. Mysterious abilities are awakening inside you. Resist, and turn darkness against itself, or, embrace corruption, and become ultimate evil.",
    "Larian Studios",
  ),
  Game(
    "Divinity: Original Sin II",
    GameImage(
      "https://gamingcentral.in/wp-content/uploads/2017/08/1796767b1dc2dbac4ad22851dd38391ef5c30d6a-2100x1200.jpg",
      "",
    ),
    "Set in a fantasy world where a form of energy known as Source, and individuals called Sourcerers can manipulate this energy, are hunting down an organization to protect their world from the evil Voidwokens who are drawn by that energy.",
    "Larian Studios",
  ),
  Game(
    "Red Dead Redemption II",
    GameImage(
      "https://gaming-cdn.com/images/products/5679/screenshot/red-dead-redemption-2-pc-game-rockstar-wallpaper-5.jpg?v=1713793245",
      "",
    ),
    "Amidst the decline of the Wild West at the turn of the 20th century, outlaw Arthur Morgan and his gang struggle to cope with the loss of their way of life.",
    "Rockstar Games",
  ),
  Game(
    "Kingdom Come: Deliverance II",
    GameImage(
      "https://gaming-cdn.com/images/products/8988/orig/kingdom-come-deliverance-ii-pc-game-steam-europe-and-us-and-canada-cover.jpg?v=1738750188",
      "",
    ),
    "Henry is sent to escort Sir Hans Capon on a diplomatic mission. After they are ambushed and nearly killed, the two young men embark on a series of perilous adventures, putting their skills, character and friendship to the ultimate test.",
    "Deep Silver & Warehorse",
  ),
  Game(
    "Cyberpunk 2077",
    GameImage(
      "https://www.cyberpunk.net/build/images/social-thumbnail-en-ddcf4d23.jpg",
      "",
    ),
    "In Night City, a mercenary known as V navigates a dystopian society in which the line between humanity and technology becomes blurred.",
    "CD Projekt Red",
  ),
];
