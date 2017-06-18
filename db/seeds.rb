unless Section.any?
  Section.create! [ 
    {name: "Lunch"},
    {name: "Breakfast"},
    {name: "Dinner"},
    {name: "Drinks"} 
  ]
end

unless Star.any?
  Star.create! [
    {score: 1, name: 'one star'},
    {score: 2, name: 'two star'},
    {score: 3, name: 'three star'},
    {score: 4, name: 'four star'},
    {score: 5, name: 'five star'}
  ]
end
unless FoodItem.any?
  FoodItem.create! [
    {
      name: 'Pho', 
      description: 'The Ong family’s version of the iconic Vietnamese soup pho is full of delicate, nuanced flavors and aromatic herbs and spices, ranging from ginger to star anise.',
      price: 30000,
      image_link: 'https://bloximages.newyork1.vip.townnews.com/omaha.com/content/tncms/assets/v3/editorial/4/2f/42fa2dfe-0c42-5a11-9346-6c84fa1ed859/5823a90f713db.image.jpg?resize=1200%2C800',
      section_id: 1
    },
    {
      name: 'Bun xao', 
      description: 'Among our favorite dishes was bun xao, a Vietnamese salad of rice vermicelli noodles served cool, along with a choice of stir-fried meat, tofu or sliced egg rolls. It’s topped with shredded lettuce, cucumber, carrots, fresh mint and crushed roasted peanuts. Bean sprouts are also included, but I asked for none.',
      price: 10000,
      image_link: 'https://bloximages.newyork1.vip.townnews.com/omaha.com/content/tncms/assets/v3/editorial/4/2f/42fa2dfe-0c42-5a11-9346-6c84fa1ed859/5823a90f713db.image.jpg?resize=1200%2C800',
      section_id: 1
    },
    {
      name: 'Banh Mi', 
      description: 'Among our favorite dishes was bun xao, a Vietnamese salad of rice vermicelli noodles served cool, along with a choice of stir-fried meat, tofu or sliced egg rolls. It’s topped with shredded lettuce, cucumber, carrots, fresh mint and crushed roasted peanuts. Bean sprouts are also included, but I asked for none.',
      price: 20000,
      image_link: 'https://migrationology.smugmug.com/Best-Vietnamese-Food/i-ZmcV85L/0/XL/vietnamese_street_food-26-XL.jpg',
      section_id: 1
    },
    {
      name: 'Bun xao', 
      description: 'Among our favorite dishes was bun xao, a Vietnamese salad of rice vermicelli noodles served cool, along with a choice of stir-fried meat, tofu or sliced egg rolls. It’s topped with shredded lettuce, cucumber, carrots, fresh mint and crushed roasted peanuts. Bean sprouts are also included, but I asked for none.',
      price: 40000,
      image_link: 'https://migrationology.smugmug.com/Best-Vietnamese-Food/i-RCL7Kpn/0/X3/vietnamese_sandwich-1-X3.jpg',
      section_id: 1
    },
    {
      name: 'Op la', 
      description: 'Among our favorite dishes was bun xao, a Vietnamese salad of rice vermicelli noodles served cool, along with a choice of stir-fried meat, tofu or sliced egg rolls. It’s topped with shredded lettuce, cucumber, carrots, fresh mint and crushed roasted peanuts. Bean sprouts are also included, but I asked for none.',
      price: 50000,
      image_link: 'https://migrationology.smugmug.com/Best-Vietnamese-Food/i-GS7Kx2s/0/X2/vietnamese__fried_fish-X2.jpg',
      section_id: 1
    },
    {
      name: 'Bun Rieu', 
      description: 'The Ong family’s version of the iconic Vietnamese soup pho is full of delicate, nuanced flavors and aromatic herbs and spices, ranging from ginger to star anise.',
      price: 18000,
      image_link: 'https://migrationology.smugmug.com/Best-Vietnamese-Food/i-nPknDGm/0/X3/bun_rieu_vietnam_saigon-X3.jpg',
      section_id: 2
    },
    {
      name: 'Bun xao', 
      description: 'Among our favorite dishes was bun xao, a Vietnamese salad of rice vermicelli noodles served cool, along with a choice of stir-fried meat, tofu or sliced egg rolls. It’s topped with shredded lettuce, cucumber, carrots, fresh mint and crushed roasted peanuts. Bean sprouts are also included, but I asked for none.',
      price: 21000,
      image_link: 'https://bloximages.newyork1.vip.townnews.com/omaha.com/content/tncms/assets/v3/editorial/4/2f/42fa2dfe-0c42-5a11-9346-6c84fa1ed859/5823a90f713db.image.jpg?resize=1200%2C800',
      section_id: 2
    },
    {
      name: 'Bun rieu', 
      description: 'Among our favorite dishes was bun xao, a Vietnamese salad of rice vermicelli noodles served cool, along with a choice of stir-fried meat, tofu or sliced egg rolls. It’s topped with shredded lettuce, cucumber, carrots, fresh mint and crushed roasted peanuts. Bean sprouts are also included, but I asked for none.',
      price: 22000,
      image_link: 'https://migrationology.smugmug.com/Best-Vietnamese-Food/i-2TbptBP/0/XL/vietnamese_street_food-18-XL.jpg',
      section_id: 2
    },
    {
      name: 'Bun xao', 
      description: 'Among our favorite dishes was bun xao, a Vietnamese salad of rice vermicelli noodles served cool, along with a choice of stir-fried meat, tofu or sliced egg rolls. It’s topped with shredded lettuce, cucumber, carrots, fresh mint and crushed roasted peanuts. Bean sprouts are also included, but I asked for none.',
      price: 34000,
      image_link: 'https://migrationology.smugmug.com/Best-Vietnamese-Food/i-tb8SFTw/0/X3/bun_mam-X3.jpg',
      section_id: 2
    },
    {
      name: 'Op la', 
      description: 'Among our favorite dishes was bun xao, a Vietnamese salad of rice vermicelli noodles served cool, along with a choice of stir-fried meat, tofu or sliced egg rolls. It’s topped with shredded lettuce, cucumber, carrots, fresh mint and crushed roasted peanuts. Bean sprouts are also included, but I asked for none.',
      price: 40000,
      image_link: 'https://migrationology.smugmug.com/Best-Vietnamese-Food/i-GS7Kx2s/0/X2/vietnamese__fried_fish-X2.jpg',
      section_id: 2
    },
    {
      name: 'Pho', 
      description: 'The Ong family’s version of the iconic Vietnamese soup pho is full of delicate, nuanced flavors and aromatic herbs and spices, ranging from ginger to star anise.',
      price: 50000,
      image_link: 'https://migrationology.smugmug.com/Best-Vietnamese-Food/i-qxhLBXr/0/X3/best-vietnamese-food-13-X3.jpg',
      section_id: 3
    },
    {
      name: 'Bun xao', 
      description: 'Among our favorite dishes was bun xao, a Vietnamese salad of rice vermicelli noodles served cool, along with a choice of stir-fried meat, tofu or sliced egg rolls. It’s topped with shredded lettuce, cucumber, carrots, fresh mint and crushed roasted peanuts. Bean sprouts are also included, but I asked for none.',
      price: 43000,
      image_link: 'https://migrationology.smugmug.com/Best-Vietnamese-Food/i-SMfmm7p/0/X3/vietnamese_dishes-4-X3.jpg',
      section_id: 3
    },
    {
      name: 'Banh Mi', 
      description: 'Among our favorite dishes was bun xao, a Vietnamese salad of rice vermicelli noodles served cool, along with a choice of stir-fried meat, tofu or sliced egg rolls. It’s topped with shredded lettuce, cucumber, carrots, fresh mint and crushed roasted peanuts. Bean sprouts are also included, but I asked for none.',
      price: 46000,
      image_link: 'https://migrationology.smugmug.com/Best-Vietnamese-Food/i-ZmcV85L/0/XL/vietnamese_street_food-26-XL.jpg',
      section_id: 3
    },
    {
      name: 'Bun xao', 
      description: 'Among our favorite dishes was bun xao, a Vietnamese salad of rice vermicelli noodles served cool, along with a choice of stir-fried meat, tofu or sliced egg rolls. It’s topped with shredded lettuce, cucumber, carrots, fresh mint and crushed roasted peanuts. Bean sprouts are also included, but I asked for none.',
      price: 48000,
      image_link: 'https://migrationology.smugmug.com/Best-Vietnamese-Food/i-PzvFzML/0/X2/delicious_vietnamese_street_food-X2.jpg',
      section_id: 3
    },
    {
      name: 'Op la', 
      description: 'Among our favorite dishes was bun xao, a Vietnamese salad of rice vermicelli noodles served cool, along with a choice of stir-fried meat, tofu or sliced egg rolls. It’s topped with shredded lettuce, cucumber, carrots, fresh mint and crushed roasted peanuts. Bean sprouts are also included, but I asked for none.',
      price: 55000,
      image_link: 'https://migrationology.smugmug.com/Best-Vietnamese-Food/i-GS7Kx2s/0/X2/vietnamese__fried_fish-X2.jpg',
      section_id: 3
    },
    {
      name: 'FRESH COCONUT', 
      description: 'Whole coconuts are unwieldy to store, so vendors will chop off the outer green husk and keep the small white inner shell, cut into a shape that won\'t fall over when put on a flat surface. These white globes are usually kept on ice until you order one, then a giant machete is used to chop a hole in the top.',
      price: 23700,
      image_link: 'http://www.seriouseats.com/images/2014/08/20140805-vietnam-drinks-coconut-barbara-adam.jpg',
      section_id: 4
    },
    {
      name: 'FRUIT SMOOTHIE', 
      description: 'ASmoothies are everywhere in Vietnam, and we\'re not just talking strawberry-banana. You\'ll find smoothies with fresh dragonfruit, custard apple, and jackfruit, along with ice and condensed milk or yogurt. My husband always orders a sinh tố bơ (avocado smoothie). My favorite is the sinh tố mãng cầu (soursop smoothie), a refreshing sweet-and-tart treat made from a fruit that\'s native to South and Central America and popular in Southeast Asia for a creamy flavor reminiscent of both strawberries and pineapples.',
      price: 73000,
      image_link: 'http://www.seriouseats.com/images/2014/08/20140805-vietnam-drinks-sinh-to-barbara-adam.jpg',
      section_id: 4
    },
    {
      name: 'HERBAL TEA', 
      description: 'This sweet and nutty Vietnamese herbal tea is usually served over ice, making it perfect to sip in the chaos and noise of a Vietnamese wet market on a steamy day. Believed to have "cooling" properties according to Chinese medicine, the most basic nước sâm recipe contains sugar cane, nettle leaves, grass roots and corn silk—an illustration of the Vietnamese aversion to wasting anything. Variations of this drink can also include dried longan, the flower of the sawtooth herb (also known as spiky coriander/cilantro), and roasted water chestnuts.',
      price: 49000,
      image_link: 'http://www.seriouseats.com/images/2014/08/20140805-vietnam-drinks-nuoc-sam-barbara-adam.jpg',
      section_id: 4
    },
    {
      name: 'SUGAR CANE JUICE', 
      description: 'Not as sickly sweet as you\'d expect, sugar cane juice is another drink that\'s considered "cooling". It\'s usually sold by street vendors, who use electric squashing machines, not unlike an old-fashioned wringer, to squeeze the juice from stalks of sugar cane. It\'s usually then mixed with juice from the calamansi, a tiny sour citrus fruit that smells like a mandarin. The finished product has a crisp grassy flavor that\'s very refreshing on a sweltering hot day. Sugar cane vendors advertise their wares openly, with a bucket of sugar cane stalks in front of their stall. They can also be identified by what looks like a ship\'s wheel on the side of the stall, part of the electric wringer mechanism that juices the cane before your eyes',
      price: 12000,
      image_link: 'http://www.seriouseats.com/images/2014/08/20140805-vietnam-drinks-sugar-cane-juice-barbara-adam.jpg',
      section_id: 4
    },
    {
      name: 'ARTICHOKE TEA', 
      description: 'The go-to drink for hungover Vietnamese men, trà atisô is believed to have liver-cleansing and detoxifying properties. There are two versions of the tea, which is usually served with ice—the sweetened yellowish version made from the artichoke flower and the intensely bitter black version made from the artichoke stems. My advice is to avoid the black tea and go for the sweetened version, which has a delicate nutty flavor. Artichokes are grown in Dalat in Vietnam\'s cool Central Highlands but packets of artichoke tea are available in supermarkets throughout the country.',
      price: 30000,
      image_link: 'http://www.seriouseats.com/images/2014/08/20140805-vietnam-drinks-tra-atiso-barbara-adam.jpg',
      section_id: 4
    }
  ]
end