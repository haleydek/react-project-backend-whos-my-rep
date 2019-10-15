# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

bob = User.create(email: 'bob@test.com', first_name: 'Bob')

badges = Badge.create([
    { content: 'Contact my congressman or congresswoman' },
    { content: 'Contact my senators' },
    { content: 'Contact a local official about an issue in my community' },
    { content: 'Volunteer for a political campaign' },
    { content: 'Attend a city council or town hall meeting' },
    { content: 'Follow my representatives on social media' },
    { content: 'VOTE!' },
    { content: 'Donate to a political campaign' },
    { content: 'Watch a political debate' },
    { content: 'Register to vote' },
    { content: 'Join my neighborhood association' },
    { content: 'Sign a petition about a local cause' },
    { content: 'Volunteer for a local charity or non-profit' },
    { content: 'Attend a local school board meeting' },
    { content: 'Volunteer at a polling place' },
    { content: 'Register to join a political party' },
    { content: 'Join a citizen advisory board' },
    { content: 'Confirm I am registered to vote with my current address' },
    { content: 'Run for an elected office' },
    { content: 'Invite a friend to attend a local meeting' },
    { content: 'Invite a friend to volunteer for a campaign' },
    { content: 'Invite a friend to volunteer for a charity or non-profit' },
    { content: 'Share a voter registration link on social media' },
    { content: 'Share a link to request an absentee ballot on social media' },
    { content: 'Research my local, state, and federal reps' },
    { content: "Subscribe to my state legislature's newsletter" },
    { content: "Subscribe to my local government's newsletter" },
    { content: 'Participate in a peaceful protest' },
    { content: 'Thank a veteran or active duty service member' },
    { content: 'Serve in the military' }
])

bobs_badges = UsersBadge.create([
    { user_id: 1, badge_id: 1 },
    { user_id: 1, badge_id: 5 },
    { user_id: 1, badge_id: 10 },
])