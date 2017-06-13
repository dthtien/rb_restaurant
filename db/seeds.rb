unless Section.any?
  Section.create! [ 
    {name: "Lunch"},
    {name: "Breakfast"},
    {name: "Dinner"},
    {name: "Drinks"} 
  ]
end