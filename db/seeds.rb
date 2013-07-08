puts "Creating deafaly texts"

GeneralText.find_or_create_by_text_name({:text_name => 'title_1', :text_value => 'Web Design'})
GeneralText.find_or_create_by_text_name({:text_name => 'title_2', :text_value => 'Graphic Design'})
GeneralText.find_or_create_by_text_name({:text_name => 'profile_title', :text_value => 'My name is Lidia Kozokin'})
GeneralText.find_or_create_by_text_name({:text_name => 'profile_content1', :text_value => 'Lorem ipsum dolor sit'})
GeneralText.find_or_create_by_text_name({:text_name => 'profie_content2', :text_value => 'Vivamus vitae vestibulum lectus'})
GeneralText.find_or_create_by_text_name({:text_name => 'profile_content3', :text_value => 'Lorem ipsum dolor sit amet, consectetur adipiscing'})
GeneralText.find_or_create_by_text_name({:text_name => 'about_bold', :text_value => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vitae vestibulum lectus. Ut placerat purus id tellus egestas, nec mattis velit vulputate. Aliquam condimentum neque eget'})
GeneralText.find_or_create_by_text_name({:text_name => 'about_content', :text_value => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vitae vestibulum lectus. Ut placerat purus id tellus egestas, nec mattis velit vulputate. Aliquam condimentum neque eget nisl iaculis, sedLorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vitae vestibulum lectus. Ut placerat purus id tellus egestas, nec mattis velit vulputate. Aliquam condimentum neque eget nisl iaculis, sed Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vitae vestibulum lectus. Ut placerat purus id tellus egestas, nec mattis velit vulputate. Aliquam condimentum neque eget nisl iaculis, sed'})
GeneralText.find_or_create_by_text_name({:text_name => 'contact_email', :text_value => 'lidia@kozokin.com'})
GeneralText.find_or_create_by_text_name({:text_name => 'contact_phone', :text_value => '+972-50-5555556'})

ImageType.find_or_create_by_name({name: 'Flash banners'})
ImageType.find_or_create_by_name({name: 'Gif banners'})
ImageType.find_or_create_by_name({name: 'Newslaters'})
ImageType.find_or_create_by_name({name: 'Websites'})
