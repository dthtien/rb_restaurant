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