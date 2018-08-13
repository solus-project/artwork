# Current wallpaper set

wallpapers = [
    'Athlone-Shannon-1920x1080.png',
    'BogFlower.jpg',
    'book.png',
    'BrittasLake.jpg',
    'chalk.jpeg',
    'Cliffs_of_Moher.png',
    'Crags.png',
    'Excl_Autumn_Leaf.jpg',
    'Excl_Autumn_Retreat.jpg',
    'Excl_Focal_Leaf.jpg',
    'Excl_Focal_Spring.jpg',
    'Excl_Lazy_Summer_Leaf.jpg',
    'Excl_Lonely_Railway.jpg',
    'Excl_Vintage_Bicycles.jpg',
    'HermiteCrab2560x1600.jpg',
    'IMG_0597-solus.JPG',
    'IMG_0604-solus.JPG',
    'IMG_0608-solus.JPG',
    'IMG_0609-solus.JPG',
    'IMG_9710.png',
    'IMG_9656.png',
    'LegendaryBarrels.jpg',
    'Mama.jpg',
    'matador-rocks.jpg',
    'Path.jpg',
    'PubSide.jpg',
    'ShannonClonmacnoise.jpg',
    'Solus-2016-abstract1-1920x1080.jpg',
    'Solus-2016UltraBlur-1920x1080.jpg',
    'SolusFresh.png',
    'TulipBee.jpg',
    'TullamoreGrandCanal.jpg',
    'Twigonometry.jpg',
]

wallpaper_dir = join_paths(path_datadir, 'backgrounds', 'solus')

install_data(
    wallpapers,
    install_dir: wallpaper_dir,
)

# Allow configuring the two wallpaper XML files
cdata = configuration_data()
cdata.set('prefix', path_prefix)

# GNOME/Budgie Wallpaper definition
gnome_background_dir = join_paths(path_datadir, 'gnome-background-properties')
configure_file(
    input: 'solus-wallpapers.xml.in',
    output: 'solus-wallpapers.xml',
    configuration: cdata,
    install_dir: gnome_background_dir,
)

# MATE Wallpaper definition
mate_background_dir = join_paths(path_datadir, 'mate-background-properties')
configure_file(
    input: 'solus-wallpapers-mate.xml.in',
    output: 'solus-wallpapers-mate.xml',
    configuration: cdata,
    install_dir: mate_background_dir,
)
