# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

CategoryAdmin.destroy_all
DrilldownAdmin.destroy_all
QuestionAdmin.destroy_all

 categories = CategoryAdmin.create([
    { name: 'Spirit'},
    {name: 'Mind'},
    { name: 'Emotions'},
    {name: 'Body'},
    { name: 'People'},
    {name: 'Intentional'},
    { name: 'Behavioural'},
    {name: 'Cultural'},
    { name: 'Social'},
    {name: 'Spiritual'},
    { name: 'Work'},
    {name: 'Money'},
    { name: 'Dating'},
    {name: 'Parenting'}, 
    { name: 'Intuition'},
    {name: 'Prosperity' }])

 drilldowns = DrilldownAdmin.create([
    {drilldown_name: 'Meditating & Well-Being'},
    {drilldown_name: 'Working & Contributing'},
    {drilldown_name: 'Thinking & Strategizing'},
    {drilldown_name: 'Envisioning & Visualizing'}, 
    {drilldown_name: 'Focusing & Attending'}, 
    {drilldown_name: 'Reflecting & Analysing'}, 
    {drilldown_name: 'Owning & Transcending'}, 
    {drilldown_name: 'Impulse Control'}, 
    {drilldown_name: 'Moving & Exercising'}, 
    {drilldown_name: 'Foraging, Cooking & Eating'}, 
    {drilldown_name: 'Resting & Sleeping'}, 
    {drilldown_name: 'Relating & Influencing'}, 
    {drilldown_name: 'Connecting & Embracing'}, 
    {drilldown_name: 'Serving & Contributing'}, 
    {drilldown_name: 'Earning & Exchanging'}, 
    {drilldown_name: 'Saving, Giving & Spending'}])

 questions = QuestionAdmin.create([
    {question: 'I Sleep Too Much'}, 
    {question: 'I Want To Lose Weight'}, 
    {question: 'I Feel I Am Ageing Too Fast'}, 
    {question: 'I Feel My Brain Is Slowing Down'}, 
    {question: 'I Want A Career With Purpose'}, 
    {question: 'I Want To Learn How To Invest'},
    {question: 'I Want To Master Aaron'}, 
    {question: 'I Want To Be A More Conscious Parent'}])

    p "Created #{categories.count} categories"
    p "Created #{drilldowns.count} drilldowns"
    p "Created #{questions.count} questions"

